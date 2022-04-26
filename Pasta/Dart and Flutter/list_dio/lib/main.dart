import 'package:flutter/material.dart';

void main() {
  String nome = "lucas";
  runApp(MaterialApp(
    // Title
    title: "Start",
    debugShowCheckedModeBanner: false,
    // Home
    home: Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Start"),
        backgroundColor: Colors.green,
      ),
      // Body
      body: Container(
        // Center the content
        child: Center(
          // Add Text
          child: Text("Olá, Mundo! :),Sou o ${nome}"),
        ),
      ),
    ),
  ));
}
