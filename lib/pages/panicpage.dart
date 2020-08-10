import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../nav_bloc/navigation_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:io';

class PanicPage extends StatefulWidget with NavigationStates {
  PanicPage({Key key}) : super(key: key);

  @override
  _PanicPageState createState() => _PanicPageState();
}

enum PlayerState { stopped, playing }

class _PanicPageState extends State<PanicPage> {
  String mp3Uri = '';
  void _playSound() {
    AudioPlayer player = AudioPlayer();
    player.play(mp3Uri);
  }

  void _loadSound() async {
    final ByteData data = await rootBundle.load('assets/savera.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/savera.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    mp3Uri = tempFile.uri.toString();
  }

  @override
  void initState() {
    super.initState();
    _loadSound();
  }

  int _counter = 3;
  Timer _timer;

  void _startTimer() {
    _counter = 3;
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
        title: Center(
          child: Text("Panic Button"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Tetap tenang",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),

            (_counter > 0)
                ? Text("")
                : Text(
                    "Alarm telah aktif!",
                    style: TextStyle(
                      color: Colors.red[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RawMaterialButton(
              onPressed: () => _startTimer(),
              fillColor: Colors.red[400],
              child: IconButton(
                onPressed: _playSound,
                icon: Icon(Icons.warning),
                iconSize: 100.0,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(25.0),
              shape: CircleBorder(),
            ),
            SizedBox(height: 30.0),
            Text(
              'APAKAH ANDA YAKIN?\n '
              'TEKAN TOMBOL DI ATAS SEKALI LAGI UNTUK MENGAKTIFKAN PANIC BUTTON',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
//            RaisedButton(
//              onPressed: () => _startTimer(),
//              child: Text("Start 10 second count down"),
//            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}
