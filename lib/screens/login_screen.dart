import 'package:app/screens/forgot_password.dart';
import 'package:app/widgets/customized_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  
  TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                child: Text("Welcome Back!" , style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
              ),
              CustomizedText(myController: _emailController, hintText: "Enter your Email",
              isPassword: false,
              ),

              CustomizedText(myController: _passwordController, hintText: "Enter your Password",
              isPassword: true,
              ),
               Align(
              alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                    child: Text("Forgot Password?",
                    style: TextStyle(
                      color: Color(0xff6A707C),
                      fontSize: 15,
                    ),),
                  ),
                ),
              ),
              CustomisedButton(
              buttonText: "Login",
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
                 const Text("or Login with"),
                 Container(
                    height: 1,
                    width: MediaQuery.of(context).size.height*0.18,
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
              height: 140,
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(50,8,8,8.0),
               child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Dont't have an account?",
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 15,
                  ),),
                  Text("  SignUp",
                  style: TextStyle(
                    color:Color(0xff35C2C1),
                    fontSize: 15,
                  ),
                  ),
                ],
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}