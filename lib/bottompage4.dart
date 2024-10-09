import 'package:flutter/material.dart';

class bottompg4 extends StatefulWidget {
  const bottompg4({super.key});

  @override
  State<bottompg4> createState() => _bottompg4State();
}

class _bottompg4State extends State<bottompg4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title:Text("All Reports"),
        actions: [
          Icon(Icons.close)
        ],
        backgroundColor: Colors.green,
      ),

     body:SingleChildScrollView(
       child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               decoration:BoxDecoration(border: Border.all()),
               child: ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Report 1"),
                 trailing: Icon(Icons.navigate_next),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               decoration: BoxDecoration(border: Border.all()),
               child: ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Report 2"),
                 trailing: Icon(Icons.navigate_next),

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               decoration: BoxDecoration(border: Border.all()),
               child: ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Report 3"),
                 trailing: Icon(Icons.navigate_next),

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               decoration: BoxDecoration(border: Border.all()),
               child: ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Report 4"),
                 trailing: Icon(Icons.navigate_next),

               ),
             ),
           ),
          SizedBox(height: 50,),
          Text("Ok", style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,color: Colors.blue),)
         ],
         
       ),
      
     ),
      

    );
  }
}
