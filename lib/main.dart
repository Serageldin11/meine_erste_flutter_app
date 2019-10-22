import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KleineSeite(),
    );
  }
}

class KleineSeite extends StatefulWidget {
  @override
  _KleineSeiteState createState() => _KleineSeiteState();
}

class _KleineSeiteState extends State<KleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Erste App"),
      ),
      body: Column(
        children: <Widget>[
          Image.network(""),
          reiheMachen("Name", "Serag"),
          reiheMachen("Alter", "20"),
          reiheMachen("checkt", "nix"),
        ],
      ),
    );
  }

  Row reiheMachen(attribut, wert) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          attribut,
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        Text(
          wert,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
