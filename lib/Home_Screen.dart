import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text("Contador - Jeferson Delgado"),
          elevation: 5.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //centrar contenido de pantalla el metodo de columna
            children: [
              Text("Numero de taps"),
              Text("$contador"),
            ],
          ),
        ),
        floatingActionButton: Row(
          textDirection: TextDirection.rtl,
          children: [
            FloatingActionButton(
              child: Icon(Icons.plus_one),
              onPressed: () {
                contador++;
                setState(() {});
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.exposure_neg_1),
              onPressed: () {
                contador--;
                setState(() {});
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.exposure_zero),
              onPressed: () {
                contador = 0;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
