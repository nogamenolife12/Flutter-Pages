import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage ({super.key});

@override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("This is the Home page",style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}