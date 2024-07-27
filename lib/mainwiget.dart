import 'package:flutter/material.dart';

class gamewidget extends StatefulWidget {
  final String text;
  const gamewidget({super.key, this.text = ""});

  @override
  State<gamewidget> createState() => _gamewidgetState();
}

class _gamewidgetState extends State<gamewidget> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 20,
          offset: Offset(0, 3), // changes position of shadow
        )
      ]),
      child: Text(widget.text,
          style: TextStyle(fontSize: 70, shadows: [
            Shadow(
              color: Colors.green.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            )
          ]),
          textAlign: TextAlign.center),
    );
  }
}
