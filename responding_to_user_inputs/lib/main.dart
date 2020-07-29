import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing With Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// widget class
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String textString = 'Hello World!';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 50,
          ),
          Text(
            textString,
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            //
            child: Text('Button'),
            onPressed: () {
              _doSomething();
            },
          ),
        ],
      ),
    );
  }

  void _doSomething() {
    setState(() {
      textString == 'Hello Flutter!'
          ? textString = 'Hello World!'
          : textString = 'Hello Flutter!';
    });
  }
}
