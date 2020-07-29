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
      body: Text('The sky is blue'),
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
