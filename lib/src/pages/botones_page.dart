import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              FlatButton(
                onPressed: (){
                  print('Click');
                  },
                child: Text('I am a button'),
                color: Colors.blue,
              ),

              FlatButton(
                onPressed: (){
                  print('Click Rounded');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('I am a button'),
                color: Colors.blue[50],
              ),

              FloatingActionButton(
                onPressed: () {  },
                child: Icon(Icons.settings)
              ),

              RaisedButton(
                onPressed: (){},
                color: Colors.redAccent,
                child: Text('click'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
