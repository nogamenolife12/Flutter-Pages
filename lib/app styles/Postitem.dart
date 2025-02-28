import 'package:flutter/cupertino.dart';
import 'package:flutter_practice_application/app%20styles/app_style.dart';

class PostItem extends StatelessWidget{
  final String user;
  const PostItem ({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
                    children: [
                      ClipOval(
                        child: Image.asset('assets/temp/frieren.jpg',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8,),
                      Text(user,style: TextStyle(
                    color: AppStyle.font
                  ),)
                    ],
                  ),
                   SizedBox(height: 15),
          Image.asset('assets/temp/scenery.png',),
         
          Text("damn this shit bussinf fr brahhhh",style: TextStyle(
          fontSize: 20,
          ))
        ],
        
      ),
    );
    
  }
}