
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> listaNumeros = new List<int>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    agregarNumeroRandom();
    _scrollController.addListener((){

      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        agregarNumeroRandom();
      }

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _scrollController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Ramdon'),
      ),
      body: RefreshIndicator(
        onRefresh: obtenerNumerosR,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: listaNumeros.length,
          itemBuilder: (context ,i){
            return Center(child: Text(listaNumeros[i].toString(), style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),);
          },

        ),
      )
    );
  }

  void agregarNumeroRandom(){

    var rdn = new Random();

    for(var i= 0; i<10; i++){
      listaNumeros.add(rdn.nextInt(100));
    }
    setState(() {

    });
  }

  Future<Null> obtenerNumerosR(){
    final duration = new Duration(seconds: 2);
    new Timer(duration,(){
      listaNumeros.clear();
      agregarNumeroRandom();
    });
    
    return Future.delayed(duration);
  }
}
