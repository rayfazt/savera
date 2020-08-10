import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget with NavigationStates {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x040F13),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
            child: Text(
              'Hai, Joe.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 65.0),
            child: Text(
              'Apakah kamu melihat atau mengalami kekerasan seksual?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.red[400],
            child: IconButton(
              onPressed: () {
                BlocProvider.of<NavigationBloc>(context)
                    .add(NavigationEvents.PanicPageClickedEvent);
              },
              icon: Icon(Icons.warning),
              iconSize: 100.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(25.0),
            shape: CircleBorder(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
            child: Text(
              'TEKAN TOMBOL DI ATAS UNTUK MENGAKTIFKAN PANIC BUTTON',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 35.0),
            child: Text(
              'atau tekan tulisan ini jika kamu ingin membantu korban di sekitarmu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19.0,
                color: Colors.grey,
              ),
            ),
          ),
          Text(
            'savera',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
