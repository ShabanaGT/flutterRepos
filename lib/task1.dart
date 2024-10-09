import 'package:flutter/material.dart';
class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.minimize),
          Icon(Icons.close)
        ],
      ),
      body: Column(
        children: [

         Text('data'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter email",
                labelText:"Enter email",
                icon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),
          ),
          TextFormField(),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}
