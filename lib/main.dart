import 'package:calc_app/calculate.dart';
import 'package:calc_app/screens/calculator_landscape.dart';
import 'package:calc_app/screens/calculator_potrait.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(title: 'Calculator'),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Calculator> {
  String _str;
  
  @override
  void initState() {
    super.initState();
    this._str = Compute.str;
  }
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    if(mediaquery.orientation == Orientation.landscape){
      return CalculateLandscape(key:widget.key, title: widget.title, str: this._str,);
    }
    return CalculatePotrait(key:widget.key, title: widget.title, str: this._str,);
  }
}







