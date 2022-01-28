import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class UserAuth extends StatelessWidget {
  const UserAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Padding(
                    padding: const EdgeInsets.all(90.0),
                    child: InkWell(
                      onTap: () {
                        signInWithGoogle().then((value) => {
                          print("Success")
                        });
                      }, // Handle your callback.
                      splashColor: Colors.transparent.withOpacity(0.1),
                      child: Ink(
                        height: 55,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/Gs.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

            // Padding(
            //
            //         padding: const EdgeInsets.all(8.0),
            //         child: CupertinoButton(
            //             color: CupertinoColors.systemBlue,
            //             child: Text("Submit"),
            //             onPressed: () {
            //               // Within the `FirstRoute` widget
            //
            //               if (formkey.currentState!.validate()) {
            //                 (formkey.currentState!.save());
            //                 FirebaseAuth.instance.createUserWithEmailAndPassword(email: "email@google.com", password: "password").
            //                     then((value) => {
            //                       print("Email saved in firebase")
            //                 }).catchError((onError){
            //                   print(onError);
            //                 });
            //                 print("Information saved successfully");
            //                 Navigator.of(context)
            //                     .pushReplacementNamed("/dashboard");
            //               }
            //             }),
            //       )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// class Authentication {
//   static Future<User?> signInWithGoogle({required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//
//     if (kIsWeb) {
//       GoogleAuthProvider authProvider = GoogleAuthProvider();
//
//       try {
//         final UserCredential userCredential =
//         await auth.signInWithPopup(authProvider);
//
//         user = userCredential.user;
//       } catch (e) {
//         print(e);
//       }
//     } else {
//       final GoogleSignIn googleSignIn = GoogleSignIn();
//
//       final GoogleSignInAccount? googleSignInAccount =
//       await googleSignIn.signIn();
//
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//         await googleSignInAccount.authentication;
//
//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken,
//         );
//
//         try {
//           final UserCredential userCredential =
//           await auth.signInWithCredential(credential);
//
//           user = userCredential.user;
//         } on FirebaseAuthException catch (e) {
//           if (e.code == 'account-exists-with-different-credential') {
//             // ...
//           } else if (e.code == 'invalid-credential') {
//             // ...
//           }
//         } catch (e) {
//           // ...
//         }
//       }
//     }
//
//     return user;
//   }
// }
Future<UserCredential?> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
  await googleUser?.authentication;
  if (googleAuth != null) {
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    var userCredentials =
    await FirebaseAuth.instance.signInWithCredential(credential);
    // Once signed in, return the UserCredential
    return userCredentials;
  }
}