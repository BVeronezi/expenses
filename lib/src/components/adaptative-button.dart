import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
          child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: onPressed,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 20
           ),
          )
        : ElevatedButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: onPressed,
        );
  }
}
