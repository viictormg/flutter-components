import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: Text("Alerta"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sanitizer),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
}
