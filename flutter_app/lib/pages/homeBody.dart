import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> trendingBands = [
    "images/shinedown/Shinedown.jpg",
    "images/metallica/Metallica.jpg",
    "images/gojira/Gojira.jpg",
    "images/royalblood/Royalblood.jpg"
  ];

  List<String> trendingAlbums = [
    "images/gojira/gojira_fortitude.jpg",
    "images/metallica/metallica_hardwiredtoselfdestruct.jpg",
    "images/shinedown/shinedown_attentionattention.jpg",
    "images/royalblood/royalblood_typhoons.jpg"
  ];

  int selectedCategoryIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("DISCOVER"),
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.red[800],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset("images/background.jpg")
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: ListView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                padding: EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Trending Bands",
                      ),
                  ),
                  SizedBox(
                    height: 127,
                    width: double.infinity,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingBands.length,
                      itemBuilder: (c, i) {
                        return Container(
                          width: 127,
                          height: 127,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(trendingBands[i]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 17,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 15),
                    child: Text(
                      "Trending Albums",
                    ),
                  ),
                  SizedBox(
                    height: 127,
                    width: double.infinity,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingAlbums.length,
                      itemBuilder: (c, i) {
                        return Container(
                          width: 127,
                          height: 127,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(trendingAlbums[i]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 17,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}