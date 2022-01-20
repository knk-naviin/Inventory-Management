import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/Bill.dart';
import 'package:inventory_management/Supplier%20Page.dart';
class purchaseScreen extends StatelessWidget {
  const purchaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Purchase List"),
          backgroundColor: Colors.red,
          elevation: 6,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => supplierScreen()),
            );
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            Column(
              children: [
                Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bill()),
                      );
                    },
                    title: Text("VVG stores"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Ganapathi silks"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Theni anadham"),
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
