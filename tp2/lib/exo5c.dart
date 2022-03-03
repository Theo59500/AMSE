import 'package:flutter/material.dart';
class Exo5c extends StatefulWidget {
  @override
  _Exo5cState createState() => _Exo5cState();
}

class _Exo5cState extends State<Exo5c> {

  Tile tile = new Tile(imageURL: 'images/paysage.jpg', alignment: Alignment(-0.45,0.05));

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Exo5c"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: width*0.8,
                width: width*0.8,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[400]),
                  child: GridView.count(
                    crossAxisCount: TaquinSize.round(),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: [
                      for (int i=0; i<TaquinSize; i++)
                        for (int j=0; j<TaquinSize; j++)
                          this.createTileWidgetFrom(Tile(imageURL: 'images/paysage.jpg', alignment: Alignment(-1.0+j*2/(TaquinSize-1),-1.0+i*2/(TaquinSize-1))))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text('Size of the board : '),
              Slider(
                  max: 10,
                  min: 2,
                  divisions: 8,
                  value: TaquinSize,
                  label: "$TaquinSize",
                  onChanged: (double value){
                    setState(() {
                      TaquinSize = value;
                    });
                  }
              ),
            ],
          ),
        ],
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
            widthFactor: 1/TaquinSize,
            heightFactor: 1/TaquinSize,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}


double TaquinSize = 3;