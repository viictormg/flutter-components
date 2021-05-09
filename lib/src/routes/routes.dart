import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/accountant.dart';
import 'package:flutter_application/src/pages/alertPage.dart';
import 'package:flutter_application/src/pages/avatarPage.dart';
import 'package:flutter_application/src/pages/cardPage.dart';
import 'package:flutter_application/src/pages/homePage.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return (<String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "card": (BuildContext context) => CardPage(),
    "alert": (BuildContext context) => AlertPage(),
    "accountant": (BuildContext context) => Accountant(),
    "avatar": (BuildContext context) => AvatarPage()
  });
}
