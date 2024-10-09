import 'package:flutter/material.dart';

class Mytask3 extends StatefulWidget {
  const Mytask3({super.key});

  @override
  State<Mytask3> createState() => _Mytask3State();
}
class _Mytask3State extends State<Mytask3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.green,
        // title: Container(
        //   height: 50,
        //   width: 50,
        //    decoration: BoxDecoration(
        //      shape: BoxShape.circle,
        //      image: DecorationImage(
        //        image: AssetImage("assets/img3.jpg")
        //      )
        //    ),
        // ),
        title: CircleAvatar(
          backgroundImage:AssetImage("assets/img3.jpg")
          ),
        centerTitle: true,
        ),




      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
                child: Container(
                  height: 180,
                    width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 3)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(

                          image: DecorationImage(image: AssetImage("assets/img1.jpg"),fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Text("data",style:TextStyle(color: Colors.red,fontSize: 23),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                child: Container(
                  height: 180,
                    width:150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 3)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height:140,
                        width:150,
                        decoration:BoxDecoration(
                            image : DecorationImage(image: AssetImage("assets/img2.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                      Text("data",style: TextStyle(color: Colors.red,fontSize: 23),),
                    ],
                  ),
              )
    ),
    ]
    ),
    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
                     height: 400,
                     width: 340,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                      image: AssetImage("assets/img4.jpg"),fit: BoxFit.fill
            )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:130.0),
                  child: TextFormField(
                   decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        hintText: "Enter Username",
                      ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height:40,
                  width:100,
                  child: ElevatedButton(onPressed:(){}, child:
                  Text("Next", style: TextStyle(fontSize: 20,color: Colors.black,),
                  ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent,shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5.0)
                   )
                   ),
                   ),

                   ),
                   ]
                   ),
                   ),


    ),
          SizedBox(height:30),
          Container(
            height: 150,
            width:350,child:Text(
            "Hello Everyone!!! Good Morning!!!  ******************",
            style: TextStyle(fontSize: 40),

          ),
          )
    ]
    ),
    );

  }
}
