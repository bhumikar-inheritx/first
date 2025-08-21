import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(theme: ThemeData(useMaterial3: false),home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World", style: TextStyle(color: Colors.white,fontSize: 30)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(child: Text("Home Page")),
    );
  }
}
