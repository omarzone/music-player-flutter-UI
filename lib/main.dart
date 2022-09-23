import 'package:flutter/material.dart';
import 'package:music_player/views/ListSongsView.dart';
import 'package:music_player/views/PlayerView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: ListSongsView()
    );
  }
}

