import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  final GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: (){

                showDialog(
                  context: context,
                  builder: (_) => mostrarAlerta(context),
                );

              },
              child: Text('Mostrar alerta 1'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.green,
            ),

            FlatButton(
              onPressed: (){

                showDialog(
                  context: context,
                  builder: (_) => mostrarAlerta2(context),
                );

              },
              child: Text('Mostrar alerta 2'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.green,
            ),

            FlatButton(
              onPressed: (){

                key.currentState.showSnackBar(SnackBar(
                  content: Text('Hola soy un snackbar'),
                ));

              },
              child: Text('Mostrar snakbar'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.deepPurpleAccent,
            ),

          ],
        ),
      ),
    );
  }

  Widget mostrarAlerta(BuildContext context){
    return AlertDialog(
      title: Text('Hola'),
      content: Text('Soy una alerta'),
      actions: <Widget>[

        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),

        FlatButton(
          onPressed: (){},
          child: Text('Aceptar'),
        ),

      ],
    );
  }

  Widget mostrarAlerta2(BuildContext context){
    return AlertDialog(
      elevation: 5,
      backgroundColor: Colors.green,
      title: Text('Hola'),
      content: Text('Soy una alerta'),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actions: <Widget>[

        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),

        FlatButton(
          onPressed: (){},
          child: Text('Aceptar'),
        ),

      ],
    );
  }

}
