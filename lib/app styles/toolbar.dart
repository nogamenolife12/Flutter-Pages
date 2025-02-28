import 'package:flutter/material.dart';
import 'package:flutter_practice_application/app%20styles/app_style.dart';
import 'package:flutter_practice_application/app%20styles/app_text.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;

  const ToolBar({super.key,required this.title,required this.actions});
  @override
  Widget build(BuildContext context) {
   return AppBar(
        title: Text(title,style: AppText.header1,),
        elevation: 1,
        backgroundColor: AppStyle.background,
        actions: actions ,
        centerTitle: false,
   );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
  
}