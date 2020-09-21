import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/src/pages/alert_page.dart';
import 'package:flutter_widgets_app/src/pages/botones_page.dart';
import 'package:flutter_widgets_app/src/pages/cards_page.dart';
import 'package:flutter_widgets_app/src/pages/circle_page.dart';
import 'package:flutter_widgets_app/src/pages/container_page.dart';
import 'package:flutter_widgets_app/src/pages/formularios_page.dart';
import 'package:flutter_widgets_app/src/pages/home_page.dart';
import 'package:flutter_widgets_app/src/pages/images_page.dart';
import 'package:flutter_widgets_app/src/pages/listview_page.dart';
import 'package:flutter_widgets_app/src/pages/stack_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'botones' : (BuildContext context) => BotonesPage(),
        'contenedores' : (BuildContext context) => ContainerPage(),
        'stacks' : (BuildContext context) => StackPage(),
        'images' : (BuildContext context) => ImagesPage(),
        'cards' : (BuildContext context) => CardsPage(),
        'circle' : (BuildContext context) => CirclePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'forms' : (BuildContext context) => FormulariosPage(),
        'list_view_random' : (BuildContext context) => ListViewPage(),
      },

    );
  }
}
