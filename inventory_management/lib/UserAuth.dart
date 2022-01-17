import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Navir",style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              backgroundColor: Colors.red
            ),),
          ),
        ),
          Container(
            padding:EdgeInsets.only(top:20,right:10,left:10),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              ),
              child: Container(
                color: Colors.black12,
                padding:EdgeInsets.only(left:12),
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText:"Enter Your name",
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(top:20,right:10,left:10),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              ),
              child: Container(
                color: Colors.black12,
                padding:EdgeInsets.only(left:12),
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText:"Enter Your Phone number",
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(top:20,right:10,left:10),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              ),
              child: Container(
                color: Colors.black12,
                padding:EdgeInsets.only(left:12),
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText:"Enter Your Email",
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(top:20,right:10,left:10),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              ),
              child: Container(
                color: Colors.black12,
                padding:EdgeInsets.only(left:12),
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText:"Enter Your ID number",
                    border:InputBorder.none,
                    fillColor:Colors.white,
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
                onPressed: (){}
                ),
          )
        ],
      ),
    );
  }
}
