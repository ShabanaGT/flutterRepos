import 'package:flutter/material.dart';
class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  TextEditingController ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.pink,
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 60),
            child: TextFormField(
              controller: ctrl,
              decoration: InputDecoration(border: OutlineInputBorder(),),
            ),
          ),
          //SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){

                  },child: Text("AC",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("C",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("%",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("/",style: TextStyle(fontSize: 40),),),
                ),
                ],
                     ),
          ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: FloatingActionButton(onPressed: (){
                        setState(() {
                          ctrl.text = "7";
                        });
                      },child: Text("7",style: TextStyle(fontSize: 40),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: FloatingActionButton(onPressed: (){
                        setState(() {
                          ctrl.text="8";
                        });
                      },child: Text("8",style: TextStyle(fontSize: 40),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: FloatingActionButton(onPressed: (){
                        setState(() {
                          ctrl.text="9";
                        });
                      },child: Text("9",style: TextStyle(fontSize: 40),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: FloatingActionButton(onPressed: (){},child: Text("X",style: TextStyle(fontSize: 40),),),
                    ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="4";
                    });
                  },child: Text("4",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="5";
                    });
                  },child: Text("5",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="6";
                    });
                  },child: Text("6",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("-",style: TextStyle(fontSize: 40),),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="1";
                    });
                  },child: Text("1",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="2";
                    });
                  },child: Text("2",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="3";
                    });
                  },child: Text("3",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("+",style: TextStyle(fontSize: 40),),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){
                    setState(() {
                      ctrl.text="0";
                    });
                  },child: Text("0",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text(".",style: TextStyle(fontSize: 40),),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: FloatingActionButton(onPressed: (){},child: Text("=",style: TextStyle(fontSize: 40),),),
                ),
              ],
            ),
          )
        ],
          ),

    );
        
  }
}
