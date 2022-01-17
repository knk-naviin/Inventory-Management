import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/UserAuth.dart';

void main(){
  runApp(
       MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Inventory_Management(),
  ));
}

class Inventory_Management extends StatelessWidget {
  const Inventory_Management({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splash: Text("Invertory Management", style: TextStyle(
              fontSize: 60
          ),),
          nextScreen: UserAuth()
      ),
    );
  }
}
