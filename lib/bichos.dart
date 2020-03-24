import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    _audioCache.loadAll([
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3",
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width; //largura do disp.
    double altura = MediaQuery.of(context).size.height;
    //proporção do aspect radio é altura/largura, mediaquery ja tem a function
    print("largura: " + largura.toString() + "altura" + altura.toString());
    return GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        childAspectRatio: 2 * MediaQuery.of(context).size.aspectRatio, //4/3
        children: <Widget>[
          GestureDetector(
            onTap: () {
              executar("cao");
            },
            child: Image.asset("assets/imagens/cao.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("gato");
            },
            child: Image.asset("assets/imagens/gato.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("leao");
            },
            child: Image.asset("assets/imagens/leao.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("macaco");
            },
            child: Image.asset("assets/imagens/macaco.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("ovelha");
            },
            child: Image.asset("assets/imagens/ovelha.png"),
          ),
          GestureDetector(
            onTap: () {
              executar("vaca");
            },
            child: Image.asset("assets/imagens/vaca.png"),
          ),
        ]);
  }
}
