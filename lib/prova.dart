import 'package:flutter/material.dart';

class Prova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        "Testo da aggiungere",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          backgroundColor: Colors.yellow,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
