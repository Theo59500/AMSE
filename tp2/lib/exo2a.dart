import 'package:flutter/material.dart';
import 'dart:math';

class Exo2a extends StatefulWidget {
  @override
  _Exo2aState createState() => _Exo2aState();
}

class _Exo2aState extends State<Exo2a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo2"),
      ),
      body: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: Colors.white),
            child: Transform(
              transform: Matrix4.identity()
                ..scale(value_scale)
                ..rotateX(value_rotateX)
                ..rotateZ(value_rotateZ)
                ..rotateY(value_mirror),
              alignment: Alignment.center,
              child: Image(image: NetworkImage('images/meme.png'),
                ),
              ),
          ),
          Row(
            children: [
              Text('RotateX :'),
              Slider(
                  max: 2*pi,
                  min: 0,
                  value: value_rotateX,
                  onChanged: (double value1){
                    setState(() {
                      value_rotateX = value1;
                    });
                  }
              ),
            ]
          ),
          Row(
              children: [
                Text('RotateZ :'),
                Slider(
                    max: 2*pi,
                    min: 0,
                    value: value_rotateZ,
                    onChanged: (double value2){
                      setState(() {
                        value_rotateZ = value2;
                      });
                    }
                ),
              ]
          ),
          Row(
              children: [
                Text('Mirror :'),
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                        if (isChecked){
                          value_mirror = pi;
                        } else {
                          value_mirror = 0;
                          }
                      });
                    })
              ]
          ),
          Row(
              children: [
                Text('Scale :'),
                Slider(
                    min: 0,
                    max: 1,
                    value: value_scale,
                    onChanged: (double value4){
                      setState(() {
                        value_scale = value4;
                      });
                    }
                ),
              ]
          ),
        ],
      )
    );
  }
}

double value_rotateX = 0;
double value_rotateZ = 0;
bool isChecked = false;
double value_mirror = 0;
double value_scale = 1;