import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = new math.Random();

class Exo6b extends StatefulWidget {
  @override
  _Exo6bState createState() => _Exo6bState();
}

class _Exo6bState extends State<Exo6b> {

  List<Widget> tiles = [];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    for (int i=0; i<3; i++)
      for (int j=0; j<3; j++)
        tiles.add(this.createTileWidgetFrom(Tile(imageURL: 'images/paysage.jpg', alignment: Alignment(-1.0+j,-1.0+i))));

    return Scaffold(
      appBar: AppBar(
        title: Text("Exo6b"),
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
              child: Board(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow), onPressed: Start),
    );
  }
  Board() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        for (int i=0; i<TaquinSize*TaquinSize; i++)
            tiles[i]
      ],
    );
  }
  Start(){
    if (start == false){
      start = true;
      setState(() {
        tiles.insert(currentTile, createTileWidgetFrom(Tile(imageURL: 'images/meme.png', alignment: Alignment(0,0))));
        tiles.removeAt(currentTile+1);
      });
      print("Start");
    }
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        adjacent();
        swapTiles(currentTile);
      },
    );
  }
  swapTiles(currentTile) {
    print("SwapTile appelé");
    if (start == true){
        setState(() {
          print("CurrentTile avant = $currentTile");
          print("TouchedTile avant = $touchedTile");
          tiles.insert(currentTile, tiles.removeAt(touchedTile));
          currentTile = touchedTile;
          print("CurrentTile après = $currentTile");
          print("TouchedTile après = $touchedTile");
        });
    }
  }
  adjacent(){
    print('Adjacent appelé');
      if (touchedTile == currentTile-1 || touchedTile == currentTile+1 || touchedTile == currentTile+TaquinSize || touchedTile == currentTile+TaquinSize){
        Adjacent = true;
      }
      else{
        Adjacent = false;
      }
    }
}

class Tile {
  String imageURL;
  Alignment alignment;
  Color? color;

  Tile({required this.imageURL, required this.alignment, this.color});

    Widget croppedImageTile() {
      return FittedBox(
        fit: BoxFit.fill,
        child: ClipRect(
          child: Container(
            child: Align(
              alignment: this.alignment,
              widthFactor: 1 / 3,
              heightFactor: 1 / 3,
              child: Image.network(this.imageURL),
            ),
          ),
        ),
      );
    }
  }

class TileWidget extends StatelessWidget {
  final Tile tile;

  TileWidget(this.tile);

  @override
  Widget build(BuildContext context) {
    return this.coloredBox();
  }
  Widget coloredBox() {
    return Container(
        color: tile.color,
        child: Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}


double TaquinSize = 3;
bool Adjacent = false;
int currentTile = 0;
int touchedTile = 1;
bool start = false;