import 'package:flutter/material.dart';

class practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Practice Page"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print("object");
              },
              child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 40, 15, 40),
                  child: Text("4/4")),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Text("picture"),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              child: Text("Button left or right"),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              child: Text("record"),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              child: Text("style"),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(child: 
            ElevatedButton(
              onPressed: () {}, 
              child: Text("capo"),),decoration: BoxDecoration(color: Colors.green),),
          ],
        ),
      );
}
