import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String _value;
  final Function _funct;
  final int _flexvalue;
  final Color _bgcolor;

  CustomButton(this._value, this._funct, this._flexvalue, this._bgcolor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this._flexvalue,
          child: Container(
        // child: Expanded(
        //   flex: this._flexvalue,
        padding: EdgeInsets.all(0.5),
          child: FlatButton(
            child: Text(
              this._value,
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            onPressed: this._funct,
            color: this._bgcolor,
          ),
        ),
    );
    // );
  }
}
