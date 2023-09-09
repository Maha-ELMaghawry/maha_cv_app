import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterial());
}

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyActionButton(),
        appBar: AppBar(
          title: Text("CV"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 150,
                    width: 200,
                    color: Colors.pink.shade100,
                    child: Center(child: Icon(Icons.face_3, size: 100))),
                Container(
                    height: 100,
                    width: 200,
                    color: Colors.pink.shade200,
                    child: Center(child: Text("Name: Maha El-Maghawry"))),
                Container(
                    height: 100,
                    width: 200,
                    color: Colors.pink.shade300,
                    child: Center(child: Text("Phone: 01033881155")))
              ],
            )));
  }
}

class MyActionButton extends StatefulWidget {
  const MyActionButton({super.key});

  @override
  State<MyActionButton> createState() => _MyActionButtonState();
}

class _MyActionButtonState extends State<MyActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.pinkAccent,
      child: Text("Call Me"),
    );
  }
}
