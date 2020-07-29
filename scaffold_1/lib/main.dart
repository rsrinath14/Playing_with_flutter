import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Icon(Icons.home)),
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 100,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 48.0,
              height: 48.0,
            ),
          ),
          Center(
            child: Container(
              height: 50,
            ),
          ),
          Center(
              child: Container(
            constraints: BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.blue[600],
            alignment: Alignment.center,
            child: Text('Hello World',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white)),
            transform: Matrix4.rotationZ(0.1),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.teal[700],
        onPressed: () {
          print('Floating Action button Pressed..!');
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Icon(Icons.arrow_left),
              Icon(Icons.arrow_left),
              Icon(Icons.home),
              Icon(Icons.arrow_right),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
        color: Colors.teal[700],
      ),
      persistentFooterButtons: <Widget>[
        Text('PersistentFooter'),
        IconButton(icon: Icon(Icons.account_box), onPressed: null),
        IconButton(icon: Icon(Icons.account_circle), onPressed: null),
      ],
      backgroundColor: Colors.grey[300],
    ));
  }
}
