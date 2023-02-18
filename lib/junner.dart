import 'package:flutter/material.dart';

class junner extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Junner Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Icon(
              //   Icons.check,
              //   size: 50,
              // ),
              Icon(Icons.audiotrack),
              Text("D       G"),
              Text("A       B"),
              Text("E       E"),
            ],
          ),
        ),
      );
}
