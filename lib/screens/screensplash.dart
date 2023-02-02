import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 5),
  //       () => Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => MyHomePage(title: 'BeeWiser'),
  //           )));
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [              
              Image.asset(
                'images/pic1.png',
                width: 300.0, 
                height: 300.0
              ),

              //SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "BeeWiser",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,                
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

