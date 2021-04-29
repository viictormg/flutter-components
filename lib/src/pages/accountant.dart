import 'package:flutter/material.dart';

class Accountant extends StatefulWidget {
  @override
  createState() {
    return new _AccountantPageState();
  }
}

class _AccountantPageState extends State<Accountant> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Accountant"),
      ),
      body: Center(
        child: Column(
          children: [Text("Number press"), Text('$_count')],
        ),
      ),
      floatingActionButton: _createButtons(),
    ));
  }

  Widget _createButtons() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [FloatingActionButton(child: Icon(Icons.add), onPressed: add)],
    ));
  }

  void add() {
    setState(() {
      _count++;
    });
  }
}
