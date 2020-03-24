import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class Vogais extends StatefulWidget {
  @override
  _VogaisState createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    _audioCache.loadAll([
      "a.mp3",
      "e.mp3",
      "i.mp3",
      "o.mp3",
      "u.mp3",
    ]);
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        childAspectRatio: 2 * MediaQuery.of(context).size.aspectRatio, //4/3
        children: <Widget>[
          GestureDetector(
            onTap: () {
              executar("a");
            },
            child: Image.asset("assets/imagens/a.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("e");
            },
            child: Image.asset("assets/imagens/e.jpg"),
          ),
          GestureDetector(
            onTap: () {
              executar("i");
            },
            child: Image.asset("assets/imagens/i.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("o");
            },
            child: Image.asset("assets/imagens/o.jpg"),
          ),
          GestureDetector(
            onTap: () {
              executar("u");
            },
            child: Image.asset("assets/imagens/u.jpg"),
          ),
        ]);
  }
}
