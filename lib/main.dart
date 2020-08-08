import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playButton(int note) {
    final play = AudioCache();
    play.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: ListTile(
                    trailing: Text(
                      '1',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurple,
                  child: ListTile(
                    trailing: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: ListTile(
                    trailing: Text(
                      '3',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                  child: ListTile(
                    trailing: Text(
                      '4',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: ListTile(
                    trailing: Text(
                      '5',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: ListTile(
                    trailing: Text(
                      '6',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.cyan,
                  child: ListTile(
                    trailing: Text(
                      '7',
                      style: TextStyle(
                          fontSize: 46.0, fontWeight: FontWeight.w900),
                    ),
                    onTap: () {
                      playButton(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
