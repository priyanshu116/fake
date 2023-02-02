import 'package:app/firebase_options.dart';
import 'package:app/screens/screensplash.dart';
import 'package:app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "BeeWiser | Manage Your Finance",
        debugShowCheckedModeBanner: false,
        
        home: WelcomeScreen(),
       
       

        );
  }
}




