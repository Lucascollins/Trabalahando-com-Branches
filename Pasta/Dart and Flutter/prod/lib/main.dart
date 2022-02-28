import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _text = "";
  String _apertar = "Aperte o botão";

  void _incrementString() {
    setState(() {
      _apertar = "Arroz Doce";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Doce"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          "$_apertar",
          style: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 30.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementString,
        backgroundColor: Colors.amber,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
