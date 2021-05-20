import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/alertPage.dart';
import 'package:flutter_application/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
      theme: ThemeData(primarySwatch: Colors.blue),
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
