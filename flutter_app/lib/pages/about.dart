import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/media.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : buildAppBar(),
      body : Text('this is the about screen'),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Medias"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
      ],
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      title: Text("TP1"),
      actions: [
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
      ],
    );
  }
}
