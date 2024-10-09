import 'dart:ui';

import 'package:flutter/material.dart';

class blurbg extends StatefulWidget {
  const blurbg({super.key});

  @override
  State<blurbg> createState() => _blurbgState();
}

class _blurbgState extends State<blurbg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu),
      title: CircleAvatar(
        radius: 20,
        backgroundImage:AssetImage("assets/gtlogo.jfif"),

      ),
        centerTitle: true,
        actions: [
          Icon(Icons.minimize),
          Icon(Icons.cancel)
        ],
        backgroundColor: Colors.blue,
      ),
      // body:Container(
      //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img1.jpg"),fit: BoxFit.fill),
      //   ),
      //   child: Column(
      body: Container(
        decoration:  BoxDecoration(image: DecorationImage(image: AssetImage("assets/img1.jpg"),fit: BoxFit.fill),),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),


          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [

                            Container(
                              height:370,
                              width:180,
                              decoration:  BoxDecoration(
                                border: Border.all(color: Colors.black,width: 1),
                              ),

                              child: Column(
                                children: [
                                  Container(
                                    height: 320,
                                    width:180,
                                    decoration:  BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/img2.jpg",),fit: BoxFit.fill,
                                                         // color: Colors.pink,
                                      ),
                                    ),
                                  ),
                                  Text("Picture",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],

                              ),
                            ),


                          ],

                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              Container(height: 180,width:75,
                                decoration: BoxDecoration(
                                  image:DecorationImage(
                                      image: AssetImage("assets/img1.jpg"),fit: BoxFit.fill)),),
                               SizedBox(height: 10,),
                              Container(height:180,width: 75,decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img3.jpg"),fit: BoxFit.fill
                                )
                              ),
                              )
                            ],
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 180,
                              width: 75,
                              decoration: BoxDecoration(image: (
                              DecorationImage(image: AssetImage("assets/img6.jfif"),fit: BoxFit.fill)
                              ),),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 180,
                              width: 75,
                              decoration: BoxDecoration(image: (DecorationImage(image: AssetImage("assets/img8.jfif"),fit: BoxFit.fill))),
                            )
                          ],
                        ),
                      ),

                    ]
                  ),
                  height: 400,
                  width: 400,
                 // color: Colors.blue,
                ),
                ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:400,
                          width: 120,
                          decoration: BoxDecoration(
                              image: (DecorationImage(image: AssetImage("assets/img8.jfif"),fit: BoxFit.fill))
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        width:120,
                        color: Colors.white,
                        child: Text("I am trying to display my output but nothing shows and all..this is my output",style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 400,
                          width: 120,
                          decoration: BoxDecoration(
                            image: (DecorationImage(image: AssetImage("assets/img4.jpg"),fit: BoxFit.fill))
                          ),
                        ),
                      )
                    ],
                  ),
                  height:420,
                  width:400,
                 decoration: BoxDecoration(border:Border.all(color: Colors.black,width: 1)),
                 // color: Colors.yellow,

                ),
              )
            ],
            ),
        ),
      ),

      );


  }
}


