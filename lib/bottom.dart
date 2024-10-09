import 'package:flutter/material.dart';

import 'login.dart';
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  List pages=[
    Center(child: Text("hi")),
    login()
  ];
  int cindex=1;
  void tap(index){
    setState(() {
      cindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
        ],
      onTap: tap,
      currentIndex: cindex,
      ),
    );
  }
}
