import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/menuComponents.dart';

class Formulario extends StatefulWidget {
  @override
  State<Formulario> createState() => FormularioState();
}

class FormularioState extends State<Formulario> {
  final valor1Controller = TextEditingController(); //Usado no 'imput'
  final valor2Controller = TextEditingController();

  double resultado = 0;

  void calculo() {
    //km percorridos ÷ litros para completar = quilometragem por litro
    setState(() {
      resultado = double.parse(valor1Controller.text) / double.parse(valor2Controller.text);
    });
  }

  List<String> listItem = []; //Cria a Lista

  void _limpaCampos() {
    setState(() {
      valor1Controller.text = "";
      valor2Controller.text = "";
    });
  }

  void addList(String value) {
    //Adiciona o item na lista
    setState(() {
      listItem.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulario"), actions: [
        IconButton(
          icon: const Icon(Icons.wifi_protected_setup),
          onPressed: _limpaCampos,
        ),
      ]),
      drawer: menuComponents(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                textAlign: TextAlign.center,
                controller: valor1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Quilometros Rodados',
                ),
                style: TextStyle(
                  fontSize: 30,
                )),
            TextField(
                textAlign: TextAlign.center,
                controller: valor2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Litros Abastecidos',
                ),
                style: TextStyle(
                  fontSize: 30,
                )),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  calculo();
                  addList(resultado.toString());
                },
                child: Text('Calcular', style: TextStyle(fontSize: 30)),
              ),
            ]),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listItem.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: IconButton(
                    //IconButton - Troca o icone e torna ele um botao
                    icon: const Icon(Icons.restore_from_trash_outlined),
                    //icone lixeira
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        listItem.remove(listItem[index]); //remove o texto da lista
                      });
                    },
                  ),
                  title: Text(listItem[index].toString()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
