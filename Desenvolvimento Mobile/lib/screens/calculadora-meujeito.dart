import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menuComponents.dart';
import 'home.dart';

class Calculadora extends StatefulWidget {

  @override
  State<Calculadora> createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      drawer: menuComponents(context),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            Row(//1 ao 3
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_decrementCounter();},
                    child: Text('1', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('2', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('3', style: TextStyle(fontSize: 30)),
                  )
                ]
            ),//1 ao 3
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_decrementCounter();},
                    child: Text('4', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('5', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('6', style: TextStyle(fontSize: 30)),
                  )
                ]
            ),//4 ao 6
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_decrementCounter();},
                    child: Text('7', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('8', style: TextStyle(fontSize: 30)),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_incrementCounter();},
                    child: Text('9', style: TextStyle(fontSize: 30)),
                  )
                ]
            ),//7 ao 9
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {_decrementCounter();},
                    child: Text('0', style: TextStyle(fontSize: 30)),
                  )
                ]
            ),//calculadora diferente (minha)
          ],
        ),
      ),
    );
  }
}