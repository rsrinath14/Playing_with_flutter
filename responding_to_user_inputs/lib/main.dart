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
  String textBox = 'Type Something';
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
          ),
          Text(
            textString,
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
            child: RaisedButton(
              child: Text('Click me!'),
              onPressed: () {
                _doSomething();
              },
            ),
          ),
          Container(
            height: 50,
          ),
          Text(
            textBox,
            style: TextStyle(fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
            child: TextField(
              style: TextStyle(fontSize: 20),
              onChanged: (text) {
                _textchange(text);
              },
            ),
          ),
          Container(
            height: 50,
          ),
          Center(
            child: CheckboxListTile(
              title: Text('Using a CheckBox'),
              value: checkedValue,
              onChanged: (newValue) {
                _checkBox(newValue);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Container(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
            child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Alert!'),
                onPressed: () {
                  _showAlertDialog();
                }),
          ),
          Container(
            height: 2.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
            child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Alert Again!'),
                onPressed: () {
                  _showAlertagainDialog(context);
                }),
          ),
          Container(
            height: 2.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
            child: RaisedButton(
                color: Colors.red[300],
                textColor: Colors.white,
                child: Text('Danger Alert!'),
                onPressed: () {
                  _showDangerAlert(context);
                }),
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

  void _textchange(String text) {
    setState(() {
      textBox = text;
    });
  }

  void _checkBox(bool isChecked) {
    setState(() {
      checkedValue = isChecked;
    });
  }

  void _showAlertDialog() {
    Widget okButton = FlatButton(
      child: Text("Ok"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Dialog title"),
      content: Text("This is a Flutter AlertDialog."),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _showAlertagainDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Alert Dialog"),
      content: Text("Do You Want to Continue learning Flutter?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _showDangerAlert(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Abort!"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget remindButton = FlatButton(
      child: Text("Remind me Later"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget launchBotton = FlatButton(
      child: Text("Launch!"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Danger!"),
      content: Text(
          "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      actions: [
        cancelButton,
        remindButton,
        launchBotton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
