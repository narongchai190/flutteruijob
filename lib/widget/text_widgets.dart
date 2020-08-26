import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  final String title;
  final Color color;
  final double fs;
  final FontWeight fw;
  final double letterSpacing;

  const TextWidgets({Key key, this.title, this.color, this.fs, this.fw,this.letterSpacing})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fs,
        fontWeight: fw,
      ),
    );
  }
}
