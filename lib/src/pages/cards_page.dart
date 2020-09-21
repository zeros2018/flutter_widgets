import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[

              _crearCard1(),
              _crearCard2(),
              _crearCard3(),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _crearCard1() {
  return Card(
    elevation: 5,

    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text('Soy una Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),
          SizedBox(height: 20),
          Text('- Conectar la app cliente para realizar un pago con tarjeta /n- hacer el racking del repartidor haciea el cliente, pantalladel cliente',),
        ],
      ),
    ),
    
  );
}

Widget _crearCard2() {
  return Card(
    elevation: 5,
    color: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text('Soy una Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize:20,color: Colors.white)),
          SizedBox(height: 20),
          Text('- Conectar la app cliente para realizar un pago con tarjeta /n- hacer el racking del repartidor haciea el cliente, pantalladel cliente',style: TextStyle(color: Colors.white),),
        ],
      ),
    ),

  );
}


Widget _crearCard3() {
  return Card(
    elevation: 5,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    child: Container(
      // padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[

          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
            ),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading2.gif'),
              image: NetworkImage('https://www.nintenderos.com/wp-content/uploads/2019/11/slack-imgs.com_-7-e1573560248585.jpg'),
            ),
          ),

          Text('Soy una imagen'),
        ],
      ),
    ),

  );
}


