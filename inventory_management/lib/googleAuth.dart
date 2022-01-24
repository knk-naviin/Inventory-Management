import 'package:flutter/material.dart';
class googleAuth extends StatelessWidget {
  const googleAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
    child: SafeArea(
    child: Scaffold(
    body: Form(
    key: formkey,
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Center(
    child: Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Text(
    "Navir",
    style: TextStyle(
    fontSize: 100,
    color: Colors.white,
    backgroundColor: Colors.red),
    ),
    ),
    ),
  }
}
