class Song {
  String songName;
  String artist;
  String imageSong;

  getSongName(){
    return this.songName;
  }
  

  Song({
    this.songName, this.artist, this.imageSong
  });
}

List<Song> songsTest = [
  Song(songName: "Rocket Queen",  artist: "Guns N Roses", imageSong: "https://i.imgur.com/I1i8ZDR.jpg"),
  Song(songName: "Evolve",  artist: "The Warning", imageSong: "https://i.imgur.com/Ks76XVS.jpg"),
  Song(songName: "Don't Start Now",  artist: "Dua Lipa", imageSong: "https://i.imgur.com/JIfYcPC.jpg"),
  Song(songName: "Robot Rock",  artist: "Daft Punk", imageSong: "https://i.imgur.com/gydhry7.jpg"),
  Song(songName: "Californication",  artist: "Red Hot Chilli Peppers", imageSong: "https://i.imgur.com/5DBSkct.jpg"),
  Song(songName: "Friends Are Family",  artist: "Oh, Hush!", imageSong: "https://i.imgur.com/fLrttSC.jpg"),
  Song(songName: "Binary Star",  artist: "SawanoHiroyuki", imageSong: "https://i.imgur.com/E3YE7Cs.jpg"),
  Song(songName: "Rocket Queen",  artist: "Guns N Roses", imageSong: "https://i.imgur.com/I1i8ZDR.jpg"),
  Song(songName: "Evolve",  artist: "The Warning", imageSong: "https://i.imgur.com/Ks76XVS.jpg"),
  Song(songName: "Don't Start Now",  artist: "Dua Lipa", imageSong: "https://i.imgur.com/JIfYcPC.jpg"),
  Song(songName: "Robot Rock",  artist: "Daft Punk", imageSong: "https://i.imgur.com/gydhry7.jpg"),
  Song(songName: "Californication",  artist: "Red Hot Chilli Peppers", imageSong: "https://i.imgur.com/5DBSkct.jpg"),
  Song(songName: "Friends Are Family",  artist: "Oh, Hush!", imageSong: "https://i.imgur.com/fLrttSC.jpg"),
  Song(songName: "Binary Star",  artist: "SawanoHiroyuki", imageSong: "https://i.imgur.com/E3YE7Cs.jpg")
];

