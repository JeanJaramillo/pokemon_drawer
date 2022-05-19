import 'package:flutter/material.dart';

class Plato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("La rica Sopa de Zapallo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(children: [
                Image.asset('assets/sopa.jpg', fit: BoxFit.contain)
              ]),
            ),
            Text(
              '"Sopa de zapallo"',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[title, icon],
        ),
      ),
    );
  }
}