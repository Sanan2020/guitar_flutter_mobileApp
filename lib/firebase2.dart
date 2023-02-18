import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

final userRef = FirebaseFirestore.instance.collection("account");

class firebase2 extends StatefulWidget {
  @override
  _firebaseState createState() => _firebaseState();
}

class _firebaseState extends State<firebase2> {
  @override
  void initState() {
   // print("fb1");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Firebase2"),
      ),
      body: Container(
        child: Column(
          children: [Text("fff")],
        ),
      ),
    );
  }
}
