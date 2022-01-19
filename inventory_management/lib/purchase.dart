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
          elevation: 0,
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Purchase',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.red
            )
          ],
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
