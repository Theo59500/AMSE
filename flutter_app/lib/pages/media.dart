import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class Media extends StatefulWidget {
  @override
  _MediaState createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListView(
        padding: const EdgeInsets.all(8),
        children: List.generate(
        groupe_musique.length,
        (index) => Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: InkWell(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupWidget(groupe_musique[index])),
              );
            },
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              dense: false,
              contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              tileColor: Colors.red[800],
              leading: Image.asset(groupe_musique[index].imageURL),
              title: Text(groupe_musique[index].title),
              subtitle: Text(groupe_musique[index].description_courte),
            )
          ),
        ),
      )
    )
    );
  }
}

