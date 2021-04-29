import 'package:flutter/material.dart';
import 'package:flutter_application/src/providers/menuProvider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Componente"),
        ),
        body: _listOptions()
        // child: Column(
        //   children: []
        // ),
        ));
  }

  Widget _listOptions() {
    return (FutureBuilder(
      future: menuProvider.loadOptions(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _options(snapshot.data, context),
        );
      },
    ));
  }

  List<Widget> _options(List<dynamic> data, context) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['rute']),
        onTap: () {
          Navigator.pushNamed(context, opt['rute']);
        },
      );

      options.add(widgetTemp);
    });

    return options;
  }
}
