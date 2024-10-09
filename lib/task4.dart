import 'package:flutter/material.dart';
class task4 extends StatefulWidget {
  const task4({super.key});

  @override
  State<task4> createState() => _task4State();
}

class _task4State extends State<task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),

      body:Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/img1.jpg"),
              ),
            ),
          ),
          SizedBox(height:30),
          Container(
            height: 300,
            width: 350,
            color: Colors.yellow,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.person),
                       border: OutlineInputBorder(),
                       labelText: "Username"

                     ),


                   ),
                 ),
                 SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 15),
                   child: TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.lock),
                       border: OutlineInputBorder(),
                       labelText: "Password"
                     ),
                   ),
                 ),
                 SizedBox(height: 30,),
                 Container(
                   height:70 ,
                   width: 70,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.blue,
                     border: Border.all(
                     color:Colors.black,
                     ),
                   ),
                   child: Text("Login",style: TextStyle(color: Colors.white),),

             ),

           ]
          )
          )
        ],

      ),

    );
  }
}
