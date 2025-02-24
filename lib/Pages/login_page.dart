import 'package:flutter/material.dart';

import 'package:flutter_practice_application/app%20styles/app_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              right: 20,
              left: 20,
              bottom: 20,
            ),
           
            child: Column(
              children: [
                Spacer(),
                Text("hello",style: TextStyle(
                  color: AppStyle.font,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  height: 32,
                  
                  child: Text('Welcome back!!',style: TextStyle(
                                color: AppStyle.font,
                  ),
                ),
              ),
                Text("Test app",style: TextStyle(
                                color: AppStyle.font,
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: AppStyle.font
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 128, 58, 58).withOpacity(0.5)
            
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: AppStyle.font
                    ),
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 131, 74, 74).withOpacity(0.5)
                  ),
                ),
            
                Align(
                  alignment: Alignment.centerRight,
                child: TextButton(onPressed :(){}, 
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 8, 4, 45)
              ),
              child: Text("Forgot password?",
                          style: TextStyle(
                            color: AppStyle.font,
                          ),),
              ),
              ),
            
              ElevatedButton(onPressed: (){
               Navigator.of(context).pushNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 12, 2, 36),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255)
              ), child: Text("login")
            ),
            
           Spacer(),
            
            Text("or login with ?",
                style: TextStyle(
                  color: AppStyle.font,
                  fontSize: 20,
                ),
            ),
            
            SizedBox(height: 20,),
            
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png',
                  width: 22,
                  height: 22,
                  ),
                  SizedBox(width: 12,),
                  Text("Google")
                ],
              )),
              ElevatedButton(onPressed: (){}, 
              style : ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/facebook.png',
                  width: 22,
                  height: 22,
                  ),
                  SizedBox(width: 10,),
                  Text("Facebook"),
                ],
              )),
            
              Row(
                children: [
                  Text("dont have an account ?",style: TextStyle(color: AppStyle.font),),
                 TextButton(onPressed: (){}, child: Text("Sign up"))
                ],
              ),
              Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}