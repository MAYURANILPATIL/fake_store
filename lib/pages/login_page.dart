import 'dart:ui';

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child:   Column(
        children: [
             TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
            ),
          ), 
        ],
       ), 
      
      ),
    );
  }
}