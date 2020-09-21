import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Widgets App'),
      ),


      body: ListView(
        children: <Widget>[

          _crearItem(context, Icons.select_all,'Botones' ,'botones'),
          _crearItem(context, Icons.calendar_view_day,'Contenedores' ,'contenedores'),

          ListTile(
            onTap: (){
              Navigator.pushNamed(context, 'stacks');
            },
            leading: Icon(Icons.call_to_action),
            title: Text('Stacks'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),

          _crearItem(context, Icons.image,'Imagenes' ,'images'),
          _crearItem(context, Icons.credit_card,'Cards' ,'cards'),
          _crearItem(context, Icons.account_circle,'Circle avatar' ,'circle'),
          _crearItem(context, Icons.add_alert,'Alertas' ,'alert'),
          _crearItem(context, Icons.input,'Formularios' ,'forms'),
          _crearItem(context, Icons.list,'ListView Random' ,'list_view_random'),
        ],
      ),
    );
  }

  Widget _crearItem(BuildContext context,IconData icon, String name, String route){
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      leading: Icon(icon),
      title: Text(name),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }


}
