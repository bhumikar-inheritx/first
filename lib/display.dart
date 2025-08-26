import 'package:flutter/material.dart';



class display extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const display({super.key, required this.name, required this.email , required this.phone});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                spacing: 40,
                children: [
                  Text('Hello , ${widget.name}', style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                  Text('Email : ${widget.email}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),),
                  Text('Phone : ${widget.phone}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back", style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
          ),
        )
    );
  }
}

