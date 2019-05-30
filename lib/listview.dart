import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom list item')),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}



Widget _myListView(BuildContext context) {

  // the Expanded widget lets the columns share the space
  Widget column = Expanded(
    child: Column(
      // align the text to the left instead of centered
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Title', style: TextStyle(fontSize: 16),),
        Text('subtitle'),
      ],
    ),
  );
  
  return ListView.builder(
    itemBuilder: (context, index) {
      return Card(
        child: InkWell(
          onTap: () {
            print('tapped');
          },
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: <Widget>[

                columnados("Col1",12),
                columnados("Col2",16),
                columnados("Col3",20)

              ],
            ),
          ),
        ),
      );
    },
  );

}

class columna extends StatefulWidget {

  String _titulo;

  columna(String titulo) {
    this._titulo = titulo;
  }


  @override
  _ColumnaState createState() => _ColumnaState(_titulo);
  
}

class _ColumnaState extends State<columna> {

  String _titulo;

  _ColumnaState(String titulo){
    this._titulo = titulo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Text(_titulo, style: TextStyle(fontSize: 16),),      
    );
  }
}

class columnados extends StatelessWidget {

  String _titulo;
  double _size;

  columnados(String titulo, double size) {
    this._titulo = titulo;
    this._size = size;
  }

  @override
  Widget build(BuildContext context) {

                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(_titulo, style: TextStyle(fontSize: _size),),      
                    ],
                  ),
                );

  }
  
}

