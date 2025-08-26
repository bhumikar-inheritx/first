
import 'package:first/widget.dart';
import 'package:flutter/material.dart';

import 'display.dart';

void main(){
 runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late final TextEditingController _phone;

  @override
  void initState() {
    _name = TextEditingController();
    _email = TextEditingController();
    _phone = TextEditingController();
    super.initState();
  }
  void dispose(){
    _name.dispose();
    _email.dispose();
    _phone.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page ",style: TextStyle(color: Colors.white),), centerTitle: true,backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 800,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
              child: Column(
                spacing: 30,
                children: [
                  Text(" Hello ,", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
              textField(controller: _name, label: "Name : ", hint: "Enter your name"),
                  textField(controller: _email, label: "Email :", hint: "Enter your email ID "),
                  textField(controller: _phone, label: "Phone :", hint: "Enter your number"),
                  SizedBox(height: 20,),
                  ElevatedButton(
                     onPressed: () {
                       setState(() {
                         Navigator.push(context , MaterialPageRoute(builder: (context) => display(name:_name.text , email :_email.text, phone : _phone.text ),));
                       });
                     } ,
                      child: Text("Submit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
