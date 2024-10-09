import 'package:flutter/material.dart';
class Sample2 extends StatefulWidget {
  const Sample2({super.key});

  @override
  State<Sample2> createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu),
        backgroundColor: Colors.indigo,
        title: Text("Login Page",style: TextStyle(fontSize: 30),),
        centerTitle: true,
        actions: [
          Icon(Icons.minimize),
          Icon(Icons.cancel),
        ],

      ),
      body: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
               height: 250,
               width: 150,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage("assets/flutter.jpg"),fit: BoxFit.fill
                 )
               ),
             ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: TextFormField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.person),
                  border:OutlineInputBorder(),
                  labelText:"Enter Username",
                  hintText: "Enter Username",
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon:  Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: "Enter Password",
                  hintText: "Enter Password",
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(child:ElevatedButton(onPressed: (){}, child:
            Text("Login",style: TextStyle(fontSize: 20,color: Colors.white) ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,shape: 
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
              
           )
            )




          ],
        ),
      );




  }
}

