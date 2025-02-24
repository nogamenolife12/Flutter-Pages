import 'package:flutter/material.dart';
import 'package:flutter_practice_application/app%20styles/app_style.dart';

class HomePage extends StatelessWidget{
  const HomePage ({super.key});

@override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Home page", style: TextStyle(
          color: AppStyle.font,
        ),
        ),
        backgroundColor: AppStyle.background,
        actions: [
          Icon(Icons.access_alarms_sharp,
          color: Colors.white
          ,)
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/temp/userimg.webp',
              width: 40,
              height: 40,),
              Text("John styles",style: TextStyle(
            color: AppStyle.font
          ),)
            ],
          ),
          
        ],
      ),
    );
  }
}