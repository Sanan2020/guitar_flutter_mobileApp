import 'package:flutter/material.dart';

class exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("exercise Page"),
        ),
        body: Center(
          child: Column(
            children: const <Widget>[Text("the test")],
          ),
        ),
      );
}
