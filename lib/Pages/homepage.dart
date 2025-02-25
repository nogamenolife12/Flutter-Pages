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
      body: ListView(
        children: userfromserver(),
      ),
    );
  }
}

Widget _userItem (){
  return Row(
              children: [
                Image.asset('assets/temp/userimg.webp',
                width: 40,
                height: 40,),
                SizedBox(width: 8,),
                Text("Frieren",style: TextStyle(
              color: AppStyle.font
            ),)
              ],
            );
            
}

List<Widget> userfromserver(){
  List<Widget> users = [];
  for(var i = 0;i<50;i++){
    users.add(_userItem());
  }
  return users;
}