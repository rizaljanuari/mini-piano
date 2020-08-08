import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playButton(int note) {
    final play = AudioCache();
    play.play('note$note.wav');
  }

  // buildKey membuat widget yang bisa dipakai berulang kali dengan argument yang berbeda
  Expanded buildKey({Color color, int numberButton, int numberNote}) {
    return Expanded(
      child: Container(
        color: color,
        child: ListTile(
          trailing: Text(
            '$numberButton',
            style: TextStyle(
                fontSize: 46.0,
                fontWeight: FontWeight.w900,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
          onTap: () {
            playButton(numberNote);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(
                  color: Colors.yellowAccent, numberButton: 1, numberNote: 1),
              buildKey(color: Colors.yellow, numberButton: 2, numberNote: 2),
              buildKey(color: Colors.amber, numberButton: 3, numberNote: 3),
              buildKey(color: Colors.orange, numberButton: 4, numberNote: 4),
              buildKey(
                  color: Colors.deepOrangeAccent, numberButton: 5, numberNote: 5),
              buildKey(color: Colors.redAccent, numberButton: 6, numberNote: 6),
              buildKey(color: Colors.red, numberButton: 7, numberNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
