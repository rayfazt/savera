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
      backgroundColor: Colors.grey[800],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 130.0),
          Text(
            'Hai, Joe.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          Text(
            'Apakah kamu melihat atau mengalami kekerasan seksual?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 120.0),
          RawMaterialButton(
            onPressed: (){},
            fillColor: Colors.red[400],
            child: IconButton(
              onPressed: (){
                BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.PanicPageClickedEvent);
              },
              icon : Icon(Icons.warning),
              iconSize: 100.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(50.0),
            shape: CircleBorder(),
          ),
          SizedBox(height: 30.0),
          Text(
            'TEKAN TOMBOL DI ATAS UNTUK MENGAKTIFKAN PANIC BUTTON',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'atau tekan tulisan ini jika kamu ingin membantu korban di sekitarmu',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 150.0),
          Text(
            'savera',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 150, width: 200,),
        Text(
          'Contact Person',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'Email : 13519038@std.stei.itb.ac.id',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,

          ),
        ),
        Text(
          'ID Line : ridhodaffasyah',
          textAlign: TextAlign.start,

          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ],
    ),

//      Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text('Hello World!'),
//          FlatButton(
//            onPressed: () {},
//            color: Colors.amber,
//            child: Text("Click me"),
//          ),
//          Container(
//            color: Colors.red,
//            padding: EdgeInsets.all(30.0),
//            child: Text('inside container'),
//          ),
//        ],
//      ),
//
//        child: RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!'),
//        ),
      );
  }
}