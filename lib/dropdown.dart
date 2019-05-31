//Programming By Leonel 

import 'package:flutter/material.dart';

class DropdownButtonHint extends StatelessWidget {
  final List<String> _frutas = [
    "Pera",
    "Manzana",
    "Sandía",
    "Guanabana",
    "Limón"
  ]; //The list of values we want on the dropdown

  final List<int> _listaNumeros = new List<int>.generate(100, (int index) => index+1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Hint in AppBar'),
      ),
      body: Center(
        child: DropdownButton(
          items: _listaNumeros
              .map((value) => DropdownMenuItem(
                    child: Text(value.toString()),
                    value: value.toString(),
                  ))
              .toList(),
          onChanged: accion, //call the accion method
          isExpanded: false,
          hint: Text('DropdownButton Hint'),
        ),
      ),
    );
  }

  void accion(String value){
    print (value);
  }

}