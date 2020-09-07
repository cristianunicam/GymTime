import 'dart:async';

import 'package:flutter/material.dart';

class TimerCountdown extends StatefulWidget {
  @override
  _TimerCountdownState createState() => _TimerCountdownState();
}

class _TimerCountdownState extends State<TimerCountdown> {
  Timer _timer;
  int _seconds = 10;
  int _minutes = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if ((_seconds < 1) && (_minutes > 0)) {
            _minutes--;
            _seconds = 59;
          } else if ((_seconds < 1) && (_minutes < 1)) {
            _timer.cancel();
          } else {
            _seconds--;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaisedButton(
          onPressed: () {
            startTimer();
          },
          child: Text("start"),
        ),
        Text("$_minutes : $_seconds"),
      ],
    );
  }
}
