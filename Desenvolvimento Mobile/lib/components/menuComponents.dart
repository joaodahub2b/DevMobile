import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/screens/formulario.dart';
import '../screens/calculadora.dart';
import '../screens/home.dart';

Widget menuComponents(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "navegação")),
            );
          },
        ),
        ListTile(
          title: const Text('Calculadora'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Calculadora()),
            );
          },
        ),
        ListTile(
          title: const Text('Formulario'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Formulario()),
            );
          },
        ),
      ],
    ),
  );
}
