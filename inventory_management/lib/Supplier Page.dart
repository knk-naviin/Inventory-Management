import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class supplierScreen extends StatelessWidget {
  const supplierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          //toolbarHeight: 50,
          centerTitle: false,
          backgroundColor: Colors.red,

          title: Text(
            "Suppliers",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     "Products:",
              //     style: TextStyle(fontSize: 25, color: Colors.black38),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 370,
                    height: 60,
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child:Center(
                        child: Text(
                          "PRODUCTS",
                          style: TextStyle(fontSize: 25, color: Colors.redAccent),
                        ),
                      ) ,
                    ),
                ),
              ),
             Container(
               padding: EdgeInsets.all(15),
               child: Container(

               //  padding: EdgeInsets.only(left: 8),
                 child: TextFormField(

                   decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red, width: 2.0),
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red, width: 2.0),
                     ),

                     hintText: "Item name",
                     border: InputBorder.none,
                     fillColor: Colors.white,
      ),
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),

                    hintText: "Quantity",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  maxLines: 5,
      keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    isDense: false,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),

                    hintText: "Specification",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  color: Colors.red,
                    child: Text("Sumbit"), onPressed: (){}
                    ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
