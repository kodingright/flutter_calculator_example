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







// Center(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Expanded(
//               flex: 2,
//               child: Container(
//                 alignment: Alignment.bottomRight,
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
//                   child: Text(
//                     _str,
//                     textScaleFactor: 3.0,
//                     style: TextStyle(fontSize: 20),
//                     textAlign: TextAlign.right,
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   CustomButton('C', () {}, 9, Colors.black12),
//                   CustomButton('DEL', () {}, 3, Colors.black12),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   CustomButton('7', () {}, 3, Colors.black12),
//                   CustomButton('8', () {}, 3, Colors.black12),
//                   CustomButton('9', () {}, 3, Colors.black12),
//                   CustomButton('+', () {}, 3, Colors.black12),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   CustomButton('4', () {}, 3, Colors.black12),
//                   CustomButton('5', () {}, 3, Colors.black12),
//                   CustomButton('6', () {}, 3, Colors.black12),
//                   CustomButton('-', () {}, 3, Colors.black12),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   CustomButton('1', () {}, 3, Colors.black12),
//                   CustomButton('2', () {}, 3, Colors.black12),
//                   CustomButton('3', () {}, 3, Colors.black12),
//                   CustomButton('*', () {}, 3, Colors.black12),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   CustomButton('0', () {}, 3, Colors.black12),
//                   CustomButton('.', () {}, 3, Colors.black12),
//                   CustomButton('=', () {}, 3, Colors.black12),
//                   CustomButton('/', () {}, 3, Colors.black12),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );