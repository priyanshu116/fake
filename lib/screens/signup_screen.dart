import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   TextEditingController _emailController = TextEditingController();
   TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(icon:Icon(Icons.arrow_back_ios_sharp), onPressed: () {
                      Navigator.pop(context);
                    },),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Text("Hello! Regitser to \n get started" ,
                   style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                ),
        
                CustomizedText(myController: _usernameController, hintText: "User Name",
                isPassword: false,
                ),
        
                CustomizedText(myController: _emailController, hintText: "Email",
                isPassword: false,
                ),
        
                CustomizedText(myController: _passwordController, hintText: "Enter your Password",
                isPassword: true,
                ),
        
                CustomizedText(myController: _confirmPasswordController, hintText: "confirm Password",
                isPassword: true,
                ),
  
                CustomisedButton(
                buttonText: "Sign Up",
                buttonColor: Colors.yellow,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen() ));
                },
        
               ),
        
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height*0.15,
                      color: Colors.grey,
                   ),
                   const Text("or Sign Up with"),
                   Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height*0.16,
                      color: Colors.grey,
                   ),
        
                  ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.google,
                        ),
                        onPressed: () {},
                      ),
        
                    )
                  ],
                 ),
               ),
               const SizedBox(
                height: 40,
               ),
        
               Padding(
                 padding: const EdgeInsets.fromLTRB(50,8,8,8.0),
                 child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                   const Text("Already have a account?",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 15,
                    ),),
                    InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen() ));
                      },
                      child: const Text("  Login Now",
                      style: TextStyle(
                        color:Color(0xff35C2C1),
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                 ),
               ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}