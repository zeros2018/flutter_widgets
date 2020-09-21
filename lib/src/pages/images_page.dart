import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[

              Image(
                image: NetworkImage('https://i.ytimg.com/vi/n_KrxgXrU4w/maxresdefault.jpg'),
              ),

              FadeInImage(
                placeholder: AssetImage('assets/loading2.gif'),
                image: NetworkImage('https://www.nintenderos.com/wp-content/uploads/2019/11/slack-imgs.com_-7-e1573560248585.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
