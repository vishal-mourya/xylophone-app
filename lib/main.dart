import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey( {Color colorName,int soundValue} ){
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(soundValue);
        },
        child: Text('sound $soundValue'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colorName: Colors.blue, soundValue: 1),
                buildKey(colorName: Colors.red, soundValue: 2),
                buildKey(colorName: Colors.purpleAccent, soundValue: 3),
                buildKey(colorName: Colors.greenAccent, soundValue: 4),
                buildKey(colorName: Colors.yellowAccent, soundValue: 5),
                buildKey(colorName: Colors.deepPurple, soundValue: 6),
                buildKey(colorName: Colors.green, soundValue: 7),

  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
