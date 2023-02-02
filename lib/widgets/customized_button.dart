import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomisedButton extends StatelessWidget {
  final String? buttonText;
    final Color? buttonColor;
    final VoidCallback? onPressed;
    final Color? textColor;

  const CustomisedButton({super.key, this.buttonText, this.buttonColor, this.onPressed, this.textColor});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
             padding: const EdgeInsets.all(10.0),
             child: InkWell(
              onTap: onPressed,
               child: Container(
                height:70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: buttonColor,
                  border: Border.all(width: 1, color: Colors.black),
                    borderRadius :  BorderRadius.circular(10),),
                    child: Center(child: Text(buttonText!, style: TextStyle(color: textColor, fontSize: 20),)),
                   
                ),
             ),
           );
  }
}