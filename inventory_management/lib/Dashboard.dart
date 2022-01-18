import 'package:flutter/material.dart';
import 'package:inventory_management/purchase.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => purchaseScreen()),
            );
          },
          child: Text("Press for next screen"),
        ),
      ),
    );
  }
}
