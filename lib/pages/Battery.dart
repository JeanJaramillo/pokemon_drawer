import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String ruta = "/Battery";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyHomePage(title: 'Receta - Sopa de zapallo'),
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
  int _actualpaso = 0;
  List<Step> mispasos = [
    const Step(
        title: Text("Paso 1"),
        content: Text(
            "Tener los ingredientes, zapallo en trozos,aceite, cebolla, ajos,comino, tomate,caldo de pollo, sal y pimienta")),
    const Step(
        title: Text("Paso 2"),
        content: Text(
            "Calentar aceite, añadir la cebolla, el ajo, el comino y los tomates, cocine hasta que las cebollas estén suaves, por unos 5 minutos")),
    const Step(
        title: Text("Paso 3"),
        content: Text("Añada el caldo de pollo o verduras y haga hervir")),
    const Step(
        title: Text("Paso 4"),
        content: Text(
            "Añada los trozos de zapallo o calabaza y haga hervir nuevamente, reduzca la temperatura y cocine a fuego lento hasta que los pedazos de zapallo estén suaves, aproximadamente unos 30 minutos")),
    const Step(
        title: Text("Paso 5"),
        content: Text(
            "Dejar que la sopa se enfríe lo suficiente para poder licuarlo, licuar hasta obtener un puré. ")),
    const Step(
        title: Text("Paso 6"),
        content: Text(
            "Añada sal y pimienta al gusto, re-calentar si la sopa lo requiere")),
    const Step(
        title: Text("Paso 7"),
        content: Text(
            "Sirva la sopa caliente con queso feta o queso de cabra y cebolletas picadas.2"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stepper(
          //Indica el paso actual del Stepper
          currentStep: _actualpaso,
          steps: mispasos,
          //cambiamos la forma del Stepper
          type: StepperType.vertical,
          onStepContinue: () {
            setState(() {
              if (_actualpaso < mispasos.length - 1) {
                _actualpaso++;
              } else {
                _actualpaso = 0;
              }
            });
            print("Mi paso actual es " + _actualpaso.toString());
          },
          onStepCancel: () {
            setState(() {
              if (_actualpaso > 0) {
                _actualpaso--;
              } else {
                _actualpaso = 0;
              }
            });

            print("Mi paso actual es " + _actualpaso.toString());
          },
          onStepTapped: (Paso) {
            setState(() {
              _actualpaso = Paso;
            });
            print("Mi paso actual es " + _actualpaso.toString());
          },
        ),
      ),
    );
  }
}
