//import 'dart:html';
//import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/main.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

final userRef = FirebaseFirestore.instance.collection("test");
String name = '';
String pass = '';
var data = <String>[];
var data1;
var data2;
var growableList = <String>["is"];

class firebase extends StatefulWidget {
  @override
  _firebaseState createState() => _firebaseState();
  //String get name => _firebaseState().getUsers();
}

class _firebaseState extends State<firebase> {
  @override
  void initState() {
    print(">initState()");
    getUsers();
    super.initState();
  }

  getUsers() {
    print(">getUsers()");
    userRef.get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot doc) {
        print(doc.data());
        data.add(doc.data().toString());
        print(data);
        //data = doc['username'];
        // print(doc.id);
        //name = doc.data().toString();

        // if (growableList.isEmpty) {
        //   growableList.add("MT");
        // } else if (!growableList.isEmpty) {
        //   growableList.add("!MT");
        // growableList.add(doc.data().toString());
        // } else {
        //   growableList.add("...");
        // }
        //print(doc['username']);
        //pass = doc['password'];
        //name = doc['username'].toString();
        //print("fb2");

        // if ("sanan" == name) {
        //   print("sanan sec");
        // } else if ("root23" == name) {
        //   print("root23 sec");
        // }
        // for (var a in snapshot.docs) {
        //   print(a.data());
        // }
      });
      data1 = data[0].toString();
      data2 = data[1].toString();
    });
    // if (email.toString() == name) {
    //   print("404");
    // }
    //print("fb3 " + name);
    // print("fb4 " + pass);
    //return name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Test Firebase..."),
      ),
      body: Container(
        child: Column(
          children: [Text("$stateInternet"), Text("$data1"), Text("$data")],
        ),
      ),
    );
  }
}
