import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/alertPage.dart';
import 'package:flutter_application/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/",
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) {
          return (AlertPage());
        });
      },
    );
  }
}
