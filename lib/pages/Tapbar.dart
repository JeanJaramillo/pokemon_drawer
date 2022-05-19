import 'package:flutter/material.dart';

import 'package:pokemon_drawer/pages/tappages/plato.dart';
import 'package:pokemon_drawer/pages/tappages/chefs.dart';

class Tapbar extends StatelessWidget {
  static const String ruta = "/Tapbar";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Mosqueteros Chefs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controlador;

  @override
  void initState() {
    super.initState();
    controlador = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.food_bank)),
            Tab(icon: Icon(Icons.photo)),
          ],
          controller: controlador,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [Plato(), Chefs()],
          controller: controlador,
        ),
      ),
    );
  }
}
