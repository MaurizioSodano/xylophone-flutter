import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final buttonColors = [
    Colors.red,
    Colors.deepOrange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.deepPurple
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              for (var i = 1; i <= 7; i += 1)
                TextButton(
                  onPressed: () {
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/note$i.wav"),
                      autoStart: true,
                      showNotification: true,
                    );
                    print("Clicked $i button");
                  },
                  child: Text('Click me'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(buttonColors[i - 1]),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
