import 'dart:async';

import 'package:body_tune/mp1_normal_breathing.dart';
import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  @override
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 3;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext  context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.timer),
        SizedBox(
          width: 5,
        ),
        Text(timerText),
        RaisedButton(
          splashColor: Theme.of(context).primaryColor,
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          // color: Theme.of(context).accentColor,
          onPressed: () async {
            // if (_formKey.currentState.validate()) {
            if (true) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mp1NormalBreathing()),
              );
            }
          },
        )
      ],
    );
  }
}
