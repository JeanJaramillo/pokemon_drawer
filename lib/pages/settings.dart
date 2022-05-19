import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String ruta = "/Settings";
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'COMENTA UN PUNTAJE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String valorInput = '';
  final controllertext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(1.0),
              child: Image.network(
                  "https://64.media.tumblr.com/a3fbaa336366d9c3d74fbf994c2d7509/tumblr_pn0c17dpyg1uuj1vto1_540.gifv"),
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: "¿Del 1 al 3 que tanto te gusta la imagen?"),
              onSubmitted: (String valortext) {
                cambiar(valortext);
              },
              controller: controllertext,
            ),
            Text(valorInput),
          ],
        ),
      ),
    );
  }

  void cambiar(String valortext) {
    // ignore: avoid_print
    setState(() {
      if (valortext.toUpperCase() == "1") {
        valortext = "Aún estás a tiempo...";
      }
      if (valortext.toUpperCase() == "2") {
        valortext = "Bueno, ya debes tener una novia 2D";
      }
      if (valortext.toUpperCase() == "3") {
        valortext = "¿Cuando fue la última vez que te bañaste?";
      }
      if (valortext.toUpperCase() == "HDP") {
        valortext = "¿Con esa boca besas a tu madre?";
      }
      if (valortext.toUpperCase() == "CTMR") {
        valortext = "Lavate la boca con jabón";
      }
      if (valortext.toUpperCase() == "PTMR") {
        valortext = "Deberías mejorar tu léxico...";
      }
       if (valortext.toUpperCase() == "9000") {
        valortext = "It's over 9'000 !!!!";
      }
      if (valortext.toUpperCase() == "4") {
        valortext = "Que parte de 'Del 1 al 3' no entendiste?";
      }
       if (valortext.toUpperCase() == "5") {
        valortext = "Que parte de 'Del 1 al 3' no entendiste?";
      }
      if (valortext.toUpperCase() == "0") {
        valortext = "Que parte de 'Del 1 al 3' no entendiste?";
      }
      valorInput = valorInput + '\n' + valortext;
      controllertext.text = '';
    });
  }
}
