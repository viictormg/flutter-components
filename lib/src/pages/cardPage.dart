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
        children: [
          _cardTypeOne(),
          SizedBox(
            height: 30,
          ),
          _cardTypeTwo(),
          SizedBox(
            height: 30,
          ),
          _cardTypeOne(),
          SizedBox(
            height: 30,
          ),
          _cardTypeTwo(),
          SizedBox(
            height: 30,
          ),
          _cardTypeOne(),
          SizedBox(
            height: 30,
          ),
          _cardTypeTwo(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }

  _cardTypeOne() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.red[300],
            ),
            title: Text("titulo perro"),
            subtitle: Text(
                "este es un texto largo de prueba este es un texto largo de prueba este es un texto largo de prueba este es un texto largo de prueba"),
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

Widget _cardTypeTwo() {
  return (Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              FadeInImage(
                fadeInDuration: Duration(milliseconds: 200),
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage(
                    'https://pm1.narvii.com/6201/52c4ef1ffe82a66f3f57577527dffd4330dfb4d4_hq.jpg'),
                height: 300,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text("prueba"),
              )
            ],
          ),
        ),
      )));
}
