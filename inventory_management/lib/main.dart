import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/Dashboard.dart';
import 'package:inventory_management/UserAuth.dart';
import 'package:inventory_management/purchase.dart';

void main(){
  runApp(
       MaterialApp(
         routes: <String, WidgetBuilder>{
           '/dashboard': (BuildContext context) => const dashboard(),
           '/userauth': (BuildContext context) => const UserAuth(),
         },
        debugShowCheckedModeBanner: false, home: Inventory_Management(),
  ));
}

class Inventory_Management extends StatelessWidget {
  const Inventory_Management({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedSplashScreen(
            splash: Text("Invertory Management", style: TextStyle(
                fontSize: 60
            ),),
            nextScreen: UserAuth()
        ),
      ),
    );
  }
}
