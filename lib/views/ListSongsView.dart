import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';
import 'package:music_player/views/PlayerView.dart';

class ListSongsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              topMenu(),
              SizedBox(
                height: 30,
              ),
              songList(context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        child: Padding(
          padding:
              const EdgeInsets.only(right: 40, left: 40, bottom: 20, top: 30),
          child: Container(
           
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    backgroundColor: Color(0xff22242A),
                    color: Color(0xff3F51FC),
                    semanticsLabel: 'Progress',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  
                  children: [
                    Icon(
                      Icons.play_circle_outline_outlined,
                      color: Colors.white60,
                      size: 60,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(
                          "EKISDE",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "artista",
                          style: TextStyle(color: Colors.white30),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                    "2:32",
                    style: TextStyle(color: Colors.white70),
                  ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topMenu() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 40, right: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Popular",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "News",
            style: TextStyle(color: Colors.white54),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Library",
            style: TextStyle(color: Colors.white54),
          )
        ],
      ),
    );
  }

  Widget songList(context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
              children: List.generate(songsTest.length, (index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PlayerView(
                          songNow: songsTest[index],
                        )));
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 8, left: 25, right: 25),
            child: ListTile(
              selectedColor: Colors.red,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  songsTest[index].imageSong,
                  width: 45,
                ),
              ),
              title: Text(
                songsTest[index].songName,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                songsTest[index].artist,
                style: TextStyle(color: Colors.white30),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ),
        );
      }))),
    );
  }
}
