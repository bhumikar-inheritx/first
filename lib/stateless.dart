import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(theme: ThemeData(useMaterial3: false), home: MyPhone()));
}

class MyPhone extends StatelessWidget {
  const MyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("TextField & Live Preview (Stateless)"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
                maintainHintSize: true,
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => controller.clear(),
                ),
              ),
            ),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: controller,
              builder: (context, value, child) {
                String name = value.text;
                return Column(
                  children: [
                    Text(
                      name.isEmpty ? "Hello," : "Hello, $name",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: name.isEmpty ? Colors.grey : Colors.green,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Characters : ${name.length}",style: TextStyle(fontSize: 30),)
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
