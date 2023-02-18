//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/practice.dart';
import 'package:flutter_app/profile.dart';
 
class sign_up extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign up Page"),
        ),
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                  'Login',
                  textAlign: TextAlign.right,
                ),
              ),
              //////////////////////
              const SizedBox(
                width: 350,
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
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                      padding: EdgeInsets.all(20.0), child: Text("Sign up"))),
              //Distance between Button
              const SizedBox(
                height: 20,
              ),

              ////////////////////////////////////////
            ],
          ),
        ),
      );
}
