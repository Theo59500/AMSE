import 'package:flutter/material.dart';

class Exo1 extends StatefulWidget {
  @override
  _Exo1State createState() => _Exo1State();
}

class _Exo1State extends State<Exo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo1"),
      ),
      body: Image(image: NetworkImage('https://picsum.photos/512/1024')),
    );
  }
}

