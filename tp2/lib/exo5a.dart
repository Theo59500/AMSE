import 'package:flutter/material.dart';
import 'dart:math';

class Exo5a extends StatefulWidget {
  @override
  _Exo5aState createState() => _Exo5aState();
}

class _Exo5aState extends State<Exo5a> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Exo5a"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: width*0.8,
            width: width*0.8,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: GridView.count(
                  crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  for (int i=0; i<16; i++)
                    Container(
                      decoration: BoxDecoration(color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
                      child: Center(
                        child: Text("Tile $i"),
                      ),
                    )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
