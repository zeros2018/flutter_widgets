import 'package:flutter/material.dart';

class FormulariosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[

              _crearInput1(),
              SizedBox(height: 20,),
              _crearInput3(),
              SizedBox(height: 20,),
              _crearInput2(),
              SizedBox(height: 20,),
              FlatButton(
                onPressed: (){},
                color: Colors.blue,
                child: Text('Enviar', style: TextStyle(color: Colors.white),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _crearInput1() {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.account_circle),
        labelText: 'Nombre completo',
        hintText: 'Nombre',
      ),
    ),
  );
}

Widget _crearInput3() {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        labelText: 'Correo',
        hintText: 'Email',
      ),
    ),
  );
}

Widget _crearInput2() {
  return Container(
    child: TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'Contraseña',
        hintText: 'Password',
      ),
    ),
  );
}
