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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Opacity(
                //opacity: 0.0,
                child: Image.network(
                    "https://www.hs-fulda.de/fileadmin/user_upload/Icons/hochschule_fulda_logo_opengraph.jpg"),
              ),
            ],
          ),
          Opacity(
            //opacity: 0.25,
            child: Container(
              color: Colors.amber[600],
              width: 200.0,
              height: 150.0,
            ),
          ),
          AnimatedOpacity(
           // opacity: opacityLevel,
            //duration: Duration(seconds: 3),
            child: Container(
              color: Colors.pink[600],
              width: 200.0,
              height: 150.0,
            ),
          ),
          RaisedButton(
            child: Text('Animation'),
            onPressed: _changeOpacity,
          ),
        ],
      ),
    );
  }

  double opacityLevel = 0.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 1 ? 0.0 : 1.0);
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
