import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedores'),
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(
                child: Text('Hola soy un texto',
                style: TextStyle(color: Colors.amberAccent)),
            ),
          ),
        ),
      ),
    );
  }
}
