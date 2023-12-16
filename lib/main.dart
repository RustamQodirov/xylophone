import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playMusic(int number) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$number.wav'),
    );
  }

  Expanded partS(Color colorv, int number) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorv,
        ),
        onPressed: () {
          playMusic(number);
        },
        child: Text(' '),
      ),
    );
  }

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              partS(Colors.red, 1),
              partS(Colors.orange, 2),
              partS(Colors.green, 3),
              partS(Colors.deepPurple, 4),
              partS(Colors.blue, 5),
              partS(Colors.yellow, 6),
              partS(Colors.teal, 7),
            ],
          ),
        ),
      ),
    );
  }
}
