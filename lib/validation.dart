import 'package:flutter/material.dart';
class validate extends StatefulWidget {
  const validate({super.key});

  @override
  State<validate> createState() => _validateState();
}

class _validateState extends State<validate> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form",style: TextStyle(fontStyle: FontStyle.italic),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:Form(
        key: _formKey,
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextFormField(
                 validator: (value) {
                   if (value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                       .hasMatch(value)) {
                     return "please enter valid email address";
                   }

                 },
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Enter Email",
                 ),
               ),
             ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Password"
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Processing")));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Please enter correct data")));
              }

            }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

            ),


            ],
        ),
      ),
    );
  }
}

