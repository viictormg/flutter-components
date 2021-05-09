import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Mostrar alerta"),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () => _showAlert(context),
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sanitizer),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return (AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            title: Text("alerta"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contenido de la alerta"),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancelar")),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Ok"))
            ],
          ));
        });
  }
}
