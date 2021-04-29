import 'package:flutter/services.dart';
import 'dart:convert';

class _MenuProvider {
  Future<List<dynamic>> loadOptions() async {
    final listOptions = await rootBundle.loadString('data/menuOptions.json');
    Map dataOptions = json.decode(listOptions);
    return dataOptions['rutes'];
  }
}

final menuProvider = new _MenuProvider();
