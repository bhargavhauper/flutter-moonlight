import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextSpeechView extends StatefulWidget {
  const TextSpeechView({super.key});

  @override
  State<TextSpeechView> createState() => _TextSpeechViewState();
}

class _TextSpeechViewState extends State<TextSpeechView> {
  final FlutterTts tts = FlutterTts();

  final TextEditingController controller =
      TextEditingController(text: 'Hello world');

  speck(String text) async {
    await tts.setLanguage('en');
    await tts.setSpeechRate(0.4);
    await tts.setPitch(1.0);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text to Speech"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                speck(controller.text);
              },
              child: const Text('Speak'))
        ],
      ),
    );
  }
}
