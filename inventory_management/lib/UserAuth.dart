import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:inventory_management/Dashboard.dart';
import 'package:inventory_management/purchase.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    google _googleSignIn = GoogleSignIn
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    String email,password;


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
                  Center(child: Image.asset('assest/navirlogo.jpeg')),
                  GoogleSignIn _googleSignIn = GoogleSignIn(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoButton(
                        color: CupertinoColors.systemBlue,
                        child: Text("Submit"),
                        onPressed: () {
                          // Within the `FirstRoute` widget

                          if (formkey.currentState!.validate()) {
                            (formkey.currentState!.save());
                            FirebaseAuth.instance.createUserWithEmailAndPassword(email: "email@google.com", password: "password").
                                then((value) => {
                                  print("Email saved in firebase")
                            }).catchError((onError){
                              print(onError);
                            });
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
