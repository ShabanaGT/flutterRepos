import 'package:flutter/material.dart';
import 'package:shabana_task/task1.dart';
import 'package:shabana_task/task3.dart';
import 'package:shabana_task/task4.dart';

import 'bottompage4.dart';



class bottom2 extends StatefulWidget {
  const bottom2({super.key});

  @override
  State<bottom2> createState() => _bottom2State();
}

class _bottom2State extends State<bottom2> {
  List pages=[
    // Center(child: Text("Page1",style: TextStyle(fontSize: 30),)),
    // Center(child: Text("page2",style: TextStyle(fontSize: 30),)),
    // Center(child: Text("page3",style: TextStyle(fontSize: 30),)),
    sample(),
    Mytask3(),
    task4(),
    bottompg4()
  ];
  int currentIndex=0;
  void click(index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Bottom Navigation"),
        backgroundColor: Colors.orange,
      ),
      body:  pages[currentIndex],


      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"user",backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:"settings"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search")
         ],

        onTap: click,
        currentIndex: currentIndex,

      ),

    );
  }
}
