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
          color: Colors.red[900],
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
            child: CustomListItem(
              description: groupe_musique[index].description_courte,
              image: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(groupe_musique[index].imageURL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: groupe_musique[index].title,
            ),
          ),
        ),
      )
    )
    );
  }
}

