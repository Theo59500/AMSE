import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/media.dart';
import 'package:flutter_app/pages/homeBody.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> get _widgetOptions => <Widget>[
    HomeBody(),
    Media(),
    About(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : buildAppBar(),
      body : Center(
        child : _widgetOptions.elementAt(_selectedIndex),
      ),
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
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Medias"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
      ],
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      title: const Text("TP1"),
      backgroundColor: Colors.red[900],
      elevation: 10,
      actions: [
        IconButton(
          icon: const FlutterLogo(),
          onPressed: () {},
        ),
      ],
    );
    }
  }

