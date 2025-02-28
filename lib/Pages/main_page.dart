import 'package:flutter/material.dart';
import 'package:flutter_practice_application/Pages/home_page.dart';
import 'package:flutter_practice_application/Pages/profile_page.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 0;
  @override
  Widget build(BuildContext context){
  return Scaffold(
    
    body: pages[count],
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 252, 245, 101),
      items: [
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/home.svg'),label: "home"),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/cloud.svg',height: 40,width: 40,),label: "cloud"),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/dots.svg'),label: "dots"),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/duck.svg'),label: "duck"),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/profile.svg',height: 25,width: 25,),label: "weather",),
      
  
    ],
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: count,
    onTap: (index){
     setState(() {
       count = index;
       print(index);
     });
    },
  type: BottomNavigationBarType.fixed,
    ),
    
  );
  }

final pages = [
HomePage(),
Center(
  child: Text("CLOUDS",style: TextStyle(
    color: Colors.white,
    fontSize: 30
  )) 
),
Center(
  child: Text("DOTS",style: TextStyle(
    color: Colors.white,
    fontSize: 30
  )) 
),
Center(
  child: Text("DUCK",style: TextStyle(
    color: Colors.white,
    fontSize: 30
  )) 
),
ProfilePage(),
];

}