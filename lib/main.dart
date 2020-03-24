import 'package:flutter/material.dart';
import 'package:newtabtest/bichos.dart';
import 'package:newtabtest/numeros.dart';
import 'package:newtabtest/vogais.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        accentColor: Colors.green,
        scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            //backgroundColor: Colors.brown,
            bottom: TabBar(
              indicatorWeight: 5,
              tabs: [
                Tab(text: "Bichos"),
                Tab(text: "Números"),
                Tab(text: "Vogais"),
              ],
            ),
            title: Center(child: Text('Aprenda Inglês')),
          ),
          body: TabBarView(
            children: [
              Bichos(),
              Numeros(),
              Vogais(),
            ],
          ),
        ),
      ),
    );
  }
}