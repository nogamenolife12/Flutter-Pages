import 'package:flutter/material.dart';
import 'package:flutter_practice_application/app%20styles/Postitem.dart';
import 'package:flutter_practice_application/app%20styles/app_style.dart';
import 'package:flutter_practice_application/app%20styles/toolbar.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget{
  HomePage ({super.key});
  List<String> users = [];
@override
  Widget build(BuildContext context){
    userfromserver();
    return Scaffold(
      
      appBar: ToolBar(title: "home page", actions: [
        IconButton(onPressed: (){

        }, 
        icon: SvgPicture.asset('assets/svg/weather.svg',color: Colors.white,)
        
      )
        
      ]),
      body: ListView.separated(itemBuilder: (context,index){
       return PostItem(user: users[index],);
      }, separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(
          height: 20,  
        );
       }, itemCount: users.length,)
    );
  }
  userfromserver(){
  for(var i = 0;i<50;i++){
    users.add('user number $i');
  }
}


}


