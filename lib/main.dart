import 'package:flutter/material.dart';
import 'package:flutter_practice_application/Pages/homepage.dart';
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
    ),
   initialRoute: '/',
   routes: {
    '/' : (context) => LoginPage(),
    '/home' : (context) => HomePage(),
   },
   );
  }
  
}



