import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_tts/flutter_tts_web.dart';
import '../config/config.dart';
import '../utils/tools.dart';
import '../widgets/widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  FlutterTts flutterTts = FlutterTts();

  Future speck() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.isLanguageAvailable("en-US");
    var result = await flutterTts.speak("Hello World");
    // if (result == 1) setState(() => ttsState = TtsState.playing);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MoonLightDrawer("Home"),
      appBar: AppBar(title: const Text("Home")),
      // bottomNavigationBar: BannerAdWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          speck();
        },
        child: const Icon(Icons.play_arrow),
      ),
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
