import 'package:flutter/material.dart';
import 'package:flutter_practice_application/Pages/homepage.dart';
import 'package:flutter_practice_application/Pages/mainpage.dart';
import 'package:flutter_practice_application/app%20styles/app_style.dart';
import 'package:flutter_practice_application/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
      fontFamily:'Dangrek',
      scaffoldBackgroundColor: AppStyle.background,
      brightness: Brightness.dark
    ),
    
   initialRoute: '/',
   routes: {
    '/' : (context) => LoginPage(),
    '/home' : (context) => HomePage(),
    '/main' : (context) => MainPage(),
   },
   );
  }
  
}



