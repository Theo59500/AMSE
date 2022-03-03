import 'package:flutter/material.dart';
import 'exo1.dart';
import 'exo2a.dart';
import 'exo2b.dart';
import 'exo4a.dart';
import 'exo5a.dart';
import 'exo5b.dart';
import 'exo5c.dart';
import 'exo6a.dart';
import 'exo6b.dart';

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
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Text("Exercice 5a"),
            subtitle: Text("Grid of colored boxes"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo5a())
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
            title: Text("Exercice 5b"),
            subtitle: Text("Fixed grid of cropped images"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo5b())
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
            title: Text("Exercice 5c"),
            subtitle: Text("Configurable Taquin board"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo5c())
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
            title: Text("Exercice 6a"),
            subtitle: Text("Moving tiles"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo6a())
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
            title: Text("Exercice 6b"),
            subtitle: Text("Moving tiles in a board"),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo6b())
              );
            },
          ),
        ),
      ],
    );
  }
}
