import 'package:GymTime/timer.dart';
import 'package:flutter/material.dart';

class CenterContainer extends StatefulWidget {
  final String text;

  CenterContainer({Key key, this.text}) : super(key: key);

  @override
  _CenterContainerState createState() => new _CenterContainerState();
}

class _CenterContainerState extends State<CenterContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('READY'),
                      TimerCountdown(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.text),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4'),
                      Text('ROUND LEFT'),
                    ],
                  ),
                  Text("AVVIA"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3'),
                      Text('CYCLE LEFT'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
