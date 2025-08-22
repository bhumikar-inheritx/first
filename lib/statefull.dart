import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(theme: ThemeData(useMaterial3: false),home: MyHome(),));
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
   TextEditingController _controller = TextEditingController();
   String name ="";

   void _clearText(){
     _controller.clear();
     setState(() {
       name= "";
     });
   }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("TextField & Live Preview (Stateful)"),backgroundColor: Colors.blueAccent,centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
                maintainHintSize: true,
                suffixIcon: IconButton(
                    icon :Icon(Icons.clear),
                    onPressed: _clearText,)
              ),
              onChanged: (value){
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(height: 10,),
            Text(name.isEmpty ? "Hello," : "Hello, $name",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: name.isEmpty ? Colors.grey : Colors.green
              ),

            ),
            SizedBox(height: 20,),
            Text("Characters : ${name.length}",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
