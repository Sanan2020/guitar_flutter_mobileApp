import 'package:flutter/material.dart';
import 'package:flutter_app/chord_search.dart';
import 'package:flutter_app/exercise.dart';
import 'package:flutter_app/junner.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/practice.dart';

import 'firebase.dart';

class menu extends StatefulWidget {
  @override
  _menu createState() => _menu();
}

class _menu extends State<menu> {
  var disButton3;
  var disButton4;
  var ic;
  var tic;
  void initState() {
    //print(test);
    if (stateLogin == true) {
      ic = Icons.logout;
      tic = "Logout";
      disButton3 = false;
      disButton4 = false;
    } else {
      // print("object");
      disButton3 = true;
      disButton4 = true;
      ic = Icons.person;
      tic = "Login";
    }
  }
  
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Guitar trainner"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                if (stateLogin == true) {
                  print("Icon Logout");
                  stateLogin = false;
                  initState();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => menu(),
                    ),
                  );
                } else {
                  print("Icon Person");
                  Navigator.push(
                    context,MaterialPageRoute(
                      builder: (context) => login(),
                    ),
                  );
                }
              },
              icon: Icon(ic,),
              //color: Colors.black,
            ),
            Center(
              child: Text(tic),
            )
          ],
        ),
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Button1
              ElevatedButton(
                  onPressed: () {
                    print("Junner Button");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => junner(),
                      ),
                    );
                  },
                  child: const Padding(padding: EdgeInsets.fromLTRB(42, 20, 42, 20),
                    child: Text("JUNER"))),
              //Distance between Button
              const SizedBox(height: 30,),
              //Button2
              ElevatedButton(
                onPressed: () {
                  print("Chord search Button");
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context) => chord_search(),),
                  );
                },
                child: const Padding(padding: EdgeInsets.fromLTRB(26, 20, 26, 20),
                  child: Text("Chord seach"))),
              const SizedBox(height: 30,),
              //Button3
              ElevatedButton(
                onPressed: disButton3? null: () {
                  print("Button3 Click");
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context) => practice(),
                  ),
                  );
                },
                child: const Padding(padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: Text("Practice"))),
              const SizedBox(height: 30,),
              //Button4
              ElevatedButton(
                  onPressed: disButton4? null: () {
                    print("Button4 Click");
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) => exercise(),
                    ),
                    );
                  },
                  child: const Padding(padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Text("Exercise"))),
              ////////////////////////////////////////
              // TextButton(

              //   style: ButtonStyle(
              //     foregroundColor:
              //         MaterialStateProperty.all<Color>(Colors.blue),
              //   ),
              //   onPressed: () {

              //   },
              //   child: Text('Login'),
              // ),
              /////////////////////
              // Center(
              //   child: Container(
              //     margin: const EdgeInsets.all(10.0),
              //     color: Colors.amber[600],
              //     width: 48.0,
              //     height: 48.0,
              //   ),
              // )
            ],
          ),
        ),
      );
}
