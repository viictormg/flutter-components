import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("cards"),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: EdgeInsets.all(10.0),
        children: [_cartTypeOne()],
      ),
    ));
  }

  _cartTypeOne() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.red[300],
            ),
            title: Text("titulo perro"),
            subtitle: Text("este es un texto largo de prueba"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text("cancel")),
              TextButton(onPressed: () {}, child: Text("ok"))
            ],
          )
        ],
      ),
    );
  }
}
