import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class purchaseScreen extends StatelessWidget {
  const purchaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(child: Text(
                "Purchase List",
              style: TextStyle(fontSize: 50,color: Colors.red,
                decoration: TextDecoration.underline
              ),
            )),
          ),
        ],
      )
    );
  }
}
