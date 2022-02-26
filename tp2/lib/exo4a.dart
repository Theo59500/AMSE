import 'package:flutter/material.dart';

class Exo4a extends StatefulWidget {
  @override
  _Exo4aState createState() => _Exo4aState();
}

class _Exo4aState extends State<Exo4a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo4"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Center(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(color: Colors.white),
              child: const SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  child: Align(
                    widthFactor: 10,
                    heightFactor: 10,
                    child: Image(image: NetworkImage("images/meme.png")),
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Center(
            child: Container(
              child: Image(image: NetworkImage("images/meme.png")),
            )
          )
        ],
      ),
    );
  }
}
