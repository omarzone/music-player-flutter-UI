import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/models/song.dart';

class PlayerView extends StatelessWidget {
  final Song songNow;
  const PlayerView({
    Key key, this.songNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 38, 1),
      body: PlayerBody(songNow:songNow),
      bottomNavigationBar: PlayerNavigationBar(),
    );
  }
}

class PlayerBody extends StatelessWidget {
  final Song songNow;
  PlayerBody({
    Key key, this.songNow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Container(
          width: double.infinity,
          //color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              playerImageNow(),
              SizedBox(
                height: 60,
              ),
              Text(
                songNow.songName,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                songNow.artist,
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 60,
              ),
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
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "2:32",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Spacer(),
                  Text(
                    "5:29",
                    style: TextStyle(color: Colors.white70),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget playerImageNow() {
    return Container(
      width: 220,
      height: 220,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(songNow.imageSong),
      ),
    );
  }
}

class PlayerNavigationBar extends StatelessWidget {
  const PlayerNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Color(0xff181A20),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0),
          )),
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            actionButtons(),
            SizedBox(
              height: 40,
            ),
            menuButtons()
          ],
        ),
      ),
    );
  }

  Widget actionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.skip_previous,
          color: Colors.white60,
          size: 40,
        ),
        Icon(
          Icons.play_circle_outline_outlined,
          color: Colors.white60,
          size: 80,
        ),
        Icon(
          Icons.skip_next,
          color: Colors.white60,
          size: 40,
        )
      ],
    );
  }

  Widget menuButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.repeat_sharp,
          color: Colors.white60,
        ),
        Icon(
          Icons.favorite_border,
          color: Colors.white60,
        ),
        Icon(
          Icons.search,
          color: Colors.white60,
        )
      ],
    );
  }
}
