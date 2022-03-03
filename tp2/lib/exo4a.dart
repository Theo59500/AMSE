import 'package:flutter/material.dart';

class Exo4a extends StatefulWidget {
  @override
  _Exo4aState createState() => _Exo4aState();
}

class _Exo4aState extends State<Exo4a> {

  Tile tile = new Tile(imageURL: 'images/meme.png', alignment: Alignment(-0.45,0.05));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo4"),
      ),
      body: Center(
          child: Column(
              children:[
                SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: this.createTileWidgetFrom(tile))),
                Container(
                  height: 200,
                  child: Image.network('images/meme.png',
                      fit: BoxFit.cover))
          ])),
    );
  }
  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({required this.imageURL,required this.alignment});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.3,
            heightFactor: 0.3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

