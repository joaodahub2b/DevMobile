import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/menuComponents.dart';

import 'home.dart';

class Calculadora extends StatefulWidget {
  @override
  State<Calculadora> createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  final valor1Controller = TextEditingController();
  final valor2Controller = TextEditingController();

  double valor1 = 0;
  double valor2 = 0;
  double resultado = 0;

  void soma() {
    setState(() {
      resultado = double.parse(valor1Controller.text) +
          double.parse(valor2Controller.text);
    });
  }

  void subtracao() {
    setState(() {
      resultado = double.parse(valor1Controller.text) -
          double.parse(valor2Controller.text);
    });
  }

  void divisao() {
    setState(() {
      resultado = double.parse(valor1Controller.text) /
          double.parse(valor2Controller.text);
    });
  }

  void multiplicacao() {
    setState(() {
      resultado = double.parse(valor1Controller.text) *
          double.parse(valor2Controller.text);
    });
  }

  void _limpaCampos() {
    setState(() {
      valor1Controller.text = "";
      valor2Controller.text = "";
      resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora"), actions: [
        IconButton(
          icon: const Icon(Icons.wifi_protected_setup),
          onPressed: _limpaCampos,
        ),
      ]),
      drawer: menuComponents(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/cachorro-fumando.jpg',
              fit: BoxFit.contain,
              height: 200.0,
            ),

            TextField(
                textAlign: TextAlign.center,
                controller: valor1Controller,
                style: TextStyle(
                  fontSize: 30,
                )),
            TextField(
                textAlign: TextAlign.center,
                controller: valor2Controller,
                style: TextStyle(
                  fontSize: 30,
                )),
            Row(
                //1 ao 3
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      soma();
                    },
                    child: Text('+', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      subtracao();
                    },
                    child: Text('-', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      multiplicacao();
                    },
                    child: Text('*', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      divisao();
                    },
                    child: Text('/', style: TextStyle(fontSize: 30)),
                  )
                ]),
            Text(
              '$resultado',
              style: Theme.of(context).textTheme.headline4,
            ), //
          ],
        ),
      ),
    );
  }
}
