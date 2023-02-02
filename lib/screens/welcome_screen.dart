import 'package:app/screens/login_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:app/widgets/customized_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/whitebg.png")
        ),
        ),
        
        child:Column(
           mainAxisAlignment : MainAxisAlignment.end,
          
          children: [
           
            const SizedBox(
             width: 300,
             height: 300,
             child: Image(image: AssetImage('assets/pic1.png'), fit:BoxFit.cover ),
             ),
             const SizedBox(
              height: 30,
             ),
             CustomisedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen() ));
              },

             ),

             CustomisedButton(
              buttonText: "SignUp",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpScreen() ));
              },

             ),
             const SizedBox(
              height: 30,
             ),

            const Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text("Continue as a Guest", style: TextStyle(color: Colors.blueAccent, fontSize: 15),),
             )
          ],
        )
        
      ),
    );
  }
}