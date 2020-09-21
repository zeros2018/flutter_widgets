import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),

      body: Stack(
        children: <Widget>[

          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.redAccent,
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepPurpleAccent,
            ),
          )

        ],
      ),
    );
  }
}
