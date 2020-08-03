import 'package:flutter/material.dart';
import './next.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to Next Screen", style: TextStyle(fontSize: 25)),
          onPressed: () {
            _navigateToNextPage(context);
          },
        ),
      ),
    );
  }

  void _navigateToNextPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(),
        ));
  }
}
