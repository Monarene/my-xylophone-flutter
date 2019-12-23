import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void player(int number){
    final player = AudioCache();
    player.play("./assets/note$number.wav");
  }

  Widget buildKey({Color color , int number}){
    return Expanded(
      child: Container(
        color: color,
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        child: FlatButton(
          child: Text("Click Me"),
          onPressed: (){
            player(number);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: const Text("Xylophone App",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),

        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.green, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.blue, number: 4),
              buildKey(color: Colors.indigo, number: 5),
              buildKey(color: Colors.orange, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          )
        ),
      ),
    );
  }
}
