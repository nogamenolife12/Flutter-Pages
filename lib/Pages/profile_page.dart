import 'package:flutter/material.dart';
import 'package:flutter_practice_application/app%20styles/app_text.dart';
import 'package:flutter_practice_application/app%20styles/toolbar.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: ToolBar(title: "Profile", actions: [
      IconButton(onPressed: (){

      }, icon: Icon(Icons.more_vert_outlined))
    ],),
    body: Column(
      children: [
        Image.asset('assets/temp/frieren.jpg',
        height: 90,
        width: 90,),
         SizedBox(height: 10,),
        Text("Sousou no Frieren" , style: AppText.header2,),
        SizedBox(height: 10,),
        Text("Fern shiii",style: AppText.subtitle3,),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("400",style: AppText.header2),
                Text("Following",style: AppText.subtitle2,),
              ],
            ),
            Column(
              children: [
                Text("14",style: AppText.header2),
                Text("Posts",style: AppText.subtitle2),
              ],
            ),
            Column(
              children: [
                Text("239",style: AppText.header2),
                Text("Following",style: AppText.subtitle2),
              ],
            ),
            
          ],
        ),
        Divider(thickness: 0.9,height: 40,),
      ],
    ),
   );
  }
}