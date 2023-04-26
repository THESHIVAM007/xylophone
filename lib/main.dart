import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$x.wav"),
      autoStart: true,
    );
  }
   buildKey(int sn , Color color){
  return Expanded(
                  child: ElevatedButton(
                    child: Text(''),
                    onPressed: () {
                      playSound(sn);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: color),
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
               buildKey(1,Colors.red),
               buildKey(2,Colors.orange),
               buildKey(3,Colors.cyan),
               buildKey(4,Colors.purple),
               buildKey(5,Colors.indigo),
               buildKey(6,Colors.yellow),
               buildKey(7,Colors.teal),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
