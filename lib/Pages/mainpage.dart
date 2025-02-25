import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text("Bottom navigation container"),),
    body: Center(
      child: Text("i am a center text")
    ),
    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.back_hand),label: "hand"),
    ]),
  );
  }
}