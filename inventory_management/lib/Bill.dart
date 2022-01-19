import 'package:flutter/material.dart';

class bill extends StatelessWidget {
  const bill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Billing Details"),
          backgroundColor: Colors.red,
          elevation: 0,
          actions: [
            IconButton(
              tooltip: "print",
                onPressed: (){},
                icon: Icon(Icons.download)
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assest/navirlogo.jpeg",
                width: 250,
              )),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shop Details",
                    style: TextStyle(
                        fontSize: 27,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shop name:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "VVG",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shop Phone:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "1234567890",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shop email:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "example@navir.com",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Purchase List",
                    style: TextStyle(
                        fontSize: 27,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text("Milkbikes"),
                    subtitle: Text("10rs biscuits"),
                    trailing: Text("20"),
                    leading: Text("1."),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text("Goldwinner"),
                    subtitle: Text("1lt pack"),
                    trailing: Text("10"),
                    leading: Text("2."),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text("India gateway Bashmathi rice"),
                    subtitle: Text("5Kg packs"),
                    trailing: Text("100"),
                    leading: Text("3."),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
