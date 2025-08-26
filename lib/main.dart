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
        title: const Text("Hello World", style: TextStyle(color: Colors.white,fontSize: 30)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40,left: 40,bottom: 50,top: 50),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
            elevation: 20,
            color: Colors.lightGreen,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 80,

                     backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww"),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(" Sonali Rathour",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 30,),
                        Text(" Abhcf@gmail.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text(" 989845677",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 40),
                    child: Row(
                      spacing: 30,
                      children: [
                        Icon(Icons.email_rounded,color: Colors.blueAccent,size: 30,),
                        Icon(Icons.facebook_outlined,color: Colors.blueAccent,size: 30,),
                        // SizedBox(width: 30,),
                        Icon(Icons.phone,color: Colors.blueAccent,size: 30,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
