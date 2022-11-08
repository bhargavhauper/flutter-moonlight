import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../config/config.dart';
import '../utils/tools.dart';
import '../widgets/widget.dart';

class HomeView extends StatefulWidget {
  
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final FlutterTts tts = FlutterTts();

  final TextEditingController controller =
      TextEditingController(text: 'Hello world');

  speck(String text) async {
    inspect(text);
    await tts.setLanguage('en');
    await tts.setSpeechRate(0.4);
    await tts.setPitch(1.0);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
/*
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MoonLightDrawer("Home"),
      appBar: AppBar(title: const Text("Home")),
      bottomNavigationBar: BannerAdWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome to Flutter Moonlight Framework"),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    launchURL(AppLink.officialWebsite);
                  },
                  child: const Text("Official Website")),
              const SizedBox(width: 2),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed(App.example);
                  },
                  child: const Text("Examples")),
              const SizedBox(width: 2),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed(App.setting);
                  },
                  child: const Text("Settings1"))
            ],
          )
        ],
      ),
    );
  }
}
*/