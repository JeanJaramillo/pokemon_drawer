import 'package:flutter/material.dart';

class Chefs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conócenos !!!"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/luz.jpg',
              width: 200.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Luz Cornelio, Otaku desde antes de reencarnar.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/diego.jpg',
              width: 200.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Diego Pinillos, Tiene muchas botellas de alcohol.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/joao.jpg',
              width: 200.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Joao Riofrio, No le tema a los fantasmas nocturnos.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/jean.jpg',
              width: 200.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Jean Rafael, Después de la foto tomó 5 Sorojchi.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
