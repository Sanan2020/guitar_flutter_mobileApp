//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/practice.dart';

class forgot_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("forgot password Page"),
        ),
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //////////////////////
              const Text(
                "Reset your password",
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //////

              const SizedBox(
                height: 10,
              ),
              //Button1
              ElevatedButton(
                  onPressed: () {
                    print("Button1 Click");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => practice(),
                      ),
                    );
                  },
                  child: const Padding(
                      padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                      child: Text("Reset password"))),
              //Distance between Button
              const SizedBox(
                height: 20,
              ),

              ////////////////////////////////////////
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ),
                  );
                },
                child: Text(
                  'Return to login',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
}
