import 'package:calc_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../calculate.dart';

class CalculateLandscape extends StatefulWidget {
  final String title;
  final String str;
  CalculateLandscape({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalculateLandscape createState() => _CalculateLandscape(this.str);
}

class _CalculateLandscape extends State<CalculateLandscape> {
  String _str;
  _CalculateLandscape(this._str);

  void update(String val){
    Compute.add(val);
    setState(() {
      this._str = Compute.str;
    });
  }

  void clear(){
    setState(() {
      Compute.clear();
      this._str = Compute.str;
    });
  }

  void delete(){
    setState(() {
      Compute.delete();
      this._str = Compute.str;
    });
  }

  void compute(){
    if(Compute.str.compareTo('0') != 0){
      setState(() {
        this._str = Compute.compute();
        Compute.str = this._str;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this._str = Compute.str;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                  child: Text(
                    _str,
                    textScaleFactor: 3.0,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('7', () {}, 3, Colors.black12),
                  CustomButton('8', () {}, 3, Colors.black12),
                  CustomButton('9', () {}, 3, Colors.black12),
                  CustomButton('C', () {clear();}, 3, Colors.black12),
                  CustomButton('DEL', () {delete();}, 3, Colors.black12),
                  CustomButton('.', () {}, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('4', () {}, 3, Colors.black12),
                  CustomButton('5', () {}, 3, Colors.black12),
                  CustomButton('6', () {}, 3, Colors.black12),
                  CustomButton('+', () {}, 3, Colors.black12),
                  CustomButton('-', () {}, 3, Colors.black12),
                  CustomButton('*', () {}, 3, Colors.black12),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton('1', () {}, 3, Colors.black12),
                  CustomButton('2', () {}, 3, Colors.black12),
                  CustomButton('3', () {}, 3, Colors.black12),
                  CustomButton('0', () {}, 3, Colors.black12),
                  CustomButton('=', () {}, 3, Colors.black12),
                  CustomButton('/', () {}, 3, Colors.black12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


