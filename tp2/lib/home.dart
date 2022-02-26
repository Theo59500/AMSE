import 'package:flutter/material.dart';
import 'exo1.dart';
import 'exo2a.dart';
import 'exo2b.dart';
import 'exo4a.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Text("Exercice 1"),
            subtitle: Text("Display an image"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Exo1())
              );
            },
          ),
        ),
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Text("Exercice 2a"),
            subtitle: Text("Rotate/Resize an image"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo2a())
              );
            },
          ),
        ),
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Text("Exercice 2b"),
            subtitle: Text("Animated rotate/resize image"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo2b())
              );
            },
          ),
        ),
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Text("Exercice 4a"),
            subtitle: Text("Animated rotate/resize image"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo4a())
              );
            },
          ),
        ),
      ],
    );
  }
}
