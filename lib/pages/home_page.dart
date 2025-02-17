import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //Icono de la izquierda
        leading: Icon(
          Icons.menu,
          color: Colors.gray[800] ,),
        actions: [
          Icon()
        ],
        ),
      
    );
  
  }
}