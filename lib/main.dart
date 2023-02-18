import 'dart:developer';
//import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/junner.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/menu.dart';
import 'package:flutter_app/practice.dart';
import 'package:flutter_app/rd_login.dart';
import 'package:flutter_app/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/search.dart';
import 'package:flutter_app/sign_up.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'firebase2.dart';
void main() async {
  bool result = await InternetConnectionChecker().hasConnection;
if(result == true) {
  print('InternetConnection...');
} else {
  print('No internet :( Reason:');
  print(InternetConnectionChecker().hasListeners);
}

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firebase(),
    );
  }
}
