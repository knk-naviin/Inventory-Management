import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/Dashboard.dart';
import 'package:inventory_management/purchase.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

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
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        color: Colors.black12,
                        padding: EdgeInsets.only(left: 12),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required name";
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Your name",
                            border: InputBorder.none,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        color: Colors.black12,
                        padding: EdgeInsets.only(left: 12),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required id number";
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Your ID number",
                            border: InputBorder.none,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoButton(
                        color: CupertinoColors.systemBlue,
                        child: Text("Submit"),
                        onPressed: () {
                          // Within the `FirstRoute` widget

                          if (formkey.currentState!.validate()) {
                            (formkey.currentState!.save());
                            print("Information saved successfully");
                            Navigator.of(context)
                                .pushReplacementNamed("/dashboard");
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
