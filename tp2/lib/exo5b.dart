import 'package:flutter/material.dart';
class Exo5b extends StatefulWidget {
  @override
  _Exo5bState createState() => _Exo5bState();
}

class _Exo5bState extends State<Exo5b> {

  Tile tile = new Tile(imageURL: 'images/paysage.jpg', alignment: Alignment(0,0));

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Exo5b"),
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
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  for (int i=0; i<3; i++)
                    for (int j=0; j<3; j++)
                      this.createTileWidgetFrom(Tile(imageURL: 'images/paysage.jpg', alignment: Alignment(-1.0+j,-1.0+i)))
                ],
              ),
            ),
          ),
        ),
      ),
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
            widthFactor: 1/3,
            heightFactor: 1/3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}
