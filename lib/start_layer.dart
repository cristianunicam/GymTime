import 'package:flutter/material.dart';

class StartLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          iconSize: 60,
          icon: Icon(
            Icons.play_circle_filled,
            color: Colors.limeAccent,
          ),
          onPressed: () {},
        ),
        Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Text(
            'AVVIA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
