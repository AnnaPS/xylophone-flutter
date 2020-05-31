import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Map<int, Color> mapColor = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.teal,
    6: Colors.blue,
    7: Colors.purple
  };
  void playSound(int sound) {
    final AudioCache player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey(int position) {
    return Expanded(
      child: FlatButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        color: mapColor[position],
        onPressed: () {
          playSound(position);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(1),
                    SizedBox(height: 10),
                    buildKey(2),
                    SizedBox(height: 10),
                    buildKey(3),
                    SizedBox(height: 10),
                    buildKey(4),
                    SizedBox(height: 10),
                    buildKey(5),
                    SizedBox(height: 10),
                    buildKey(6),
                    SizedBox(height: 10),
                    buildKey(7),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
