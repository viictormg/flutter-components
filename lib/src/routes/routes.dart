import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/accountant.dart';
import 'package:flutter_application/src/pages/alertPage.dart';
import 'package:flutter_application/src/pages/avatarPage.dart';
import 'package:flutter_application/src/pages/cardPage.dart';
import 'package:flutter_application/src/pages/homePage.dart';
import 'package:flutter_application/src/pages/animatedContainer.dart';
import 'package:flutter_application/src/pages/inputPage.dart';
import 'package:flutter_application/src/pages/listviewPage.dart';
import 'package:flutter_application/src/pages/sliderPage.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return (<String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "card": (BuildContext context) => CardPage(),
    "alert": (BuildContext context) => AlertPage(),
    "accountant": (BuildContext context) => Accountant(),
    "avatar": (BuildContext context) => AvatarPage(),
    "animated": (BuildContext context) => AnimatedContainerPage(),
    "input": (BuildContext context) => InputPage(),
    "slider": (BuildContext context) => SliderPage(),
    "listview": (BuildContext context) => ListPage()
  });
}
