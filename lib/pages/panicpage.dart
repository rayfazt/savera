import 'dart:async';
import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class PanicPage extends StatefulWidget with NavigationStates {
  PanicPage({Key key}) : super(key: key);

  @override
  _PanicPageState createState() => _PanicPageState();
}

class _PanicPageState extends State<PanicPage> {
  int _counter = 10;
  Timer _timer;

  void _startTimer() {
    _counter = 10;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
              "DONE!",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RaisedButton(
              onPressed: () => _startTimer(),
              child: Text("Start 10 second count down"),
            ),
          ],
        ),
      ),
    );
  }
}