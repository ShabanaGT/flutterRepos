import 'package:flutter/material.dart';
class validate2 extends StatefulWidget {
  const validate2({super.key});

  @override
  State<validate2> createState() => _validate2State();
}

class _validate2State extends State<validate2> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  TextEditingController d=TextEditingController();
  bool btnVisible=false;
  check(w){
    setState(() {
      btnVisible=a.text.isNotEmpty&&b.text.isNotEmpty&&c.text.isNotEmpty&&d.text.isNotEmpty;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: a,
                validator: (value){
                  if(value!.isEmpty){
                    return "please enter username";
                  }
                },
                 onChanged: (value){
                  check(value);
                },
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Username",
              ),
              ),
            ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextFormField(
               controller: b,
               validator: (value){
                 if(value!.length==0){
                   return "please enter mobile number";
                 }
                 if(value!.length!=10){
                   return "mobile number should be 10 digits";
                 }
               },
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Enter 10 digit mobile number",
               ),
             ),
           ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value){
                  if(value!.isEmpty|| !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)){
                    return "please enter valid email";
                  }
                },
                onChanged: (value){
                  check(value);
                    },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter email address"
                ),
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value){
                //  RegExp regex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$);
                  if(value!.isEmpty ||!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
                    return "Please enter valid password";
                  }
                  },
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: "Enter password"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Visibility(
              visible: btnVisible,
              child: ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Processing Data")));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please enter valid details")));
                }
              }, 
                child:
              Text("Login",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
