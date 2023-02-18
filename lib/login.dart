//import 'dart:html';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/firebase.dart';
import 'package:flutter_app/firebase.dart';
import 'package:flutter_app/forgot_password.dart';
import 'package:flutter_app/menu.dart';
import 'package:flutter_app/practice.dart';
import 'package:flutter_app/sign_up.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var fb = firebase();
var stateLogin = false;
//var test = "505";
final email = TextEditingController();
final passw = TextEditingController();

class login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  final _formKey = GlobalKey<FormState>(); //create key

  void initState() {
    print("li1");
    getn();
    super.initState();
  }

  getn() {
    print("li2");
    print("li3 " + "fb.name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Sign In"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[const SizedBox(height: 15,),
                  //const Text("Email:"),
/* TextFormField */
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "กรุณากรอก Email ด้วย!";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15,),
                  // const Text("Password:"),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    controller: passw,
                    obscureText: true,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "กรุณากรอกรหัสผ่านด้วย!";
                      }
                      return null;
                    },
                  ),
/* Forgot password? */
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                            builder: (context) => forgot_password(),
                          ),
                          );
                        },
                        child: const Text('Forgot password?'),
                      ),
                    ],
                  ),
/* Login */
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              print("Click");
                              //String n = fb.name;
                              //bool pass = _formKey.currentState!.validate();
                              // if (pass == true) {print("\nEmail : ${email.text}\nPasswoed : ${passw.text}");}
                              if (_formKey.currentState!.validate()) {
                              //  print(n);
                                // if (n.isEmpty) {
                                //   print(CircularProgressIndicator());
                                // }
                                if (email.text == "n") {
                                  print("mail pass");
                                  if (passw.text == "1234") {
                                    print("passw pass");
                                    stateLogin = true;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "Welcome! \nEmail : ${email.text}\nPasswoed : ${passw.text}")),
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => menu(),
                                      ),
                                    );
                                  }
                                }
                              }
                              // email.clear();
                              // passw.clear();
                            },
                            child: const Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: Text("Login"))),
                      ),
                    ],
                  ),
/* Sign up */
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("-OR-"),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => sign_up(),
                      //   ),
                      // );
                    },
                    child: const Text(
                      'Don\'t have an Account? Sign up',
                    ),
                  ),
                ],
              )),
        ));
  }
}
