import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Text("Login Page",style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 100,
            child: Image.asset("assets/logo.png")
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter valid email",
                labelText: "Enter email",
                prefixIcon: Icon(Icons.person)
              ),

            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(

              decoration: InputDecoration(
              border:OutlineInputBorder(),
                hintText: "Enter password",
                labelText: "Enter password",
                prefixIcon: Icon(Icons.lock)

            ),
          )
          ),
          SizedBox(height: 40,),
          Container(
            height: 70,
            width: 150,
            child: ElevatedButton(onPressed: (){}, child:
            Text("Login",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )

              ),


            ),
          )
        ],
      ),
    );
  }
}
