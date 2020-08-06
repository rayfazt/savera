import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class HomePage extends StatefulWidget with NavigationStates {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      floatingActionButton: Center(
        child: RawMaterialButton(
          onPressed: (){},
          fillColor: Colors.red[400],
          child: Icon(
            Icons.warning,
            size: 100.0,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(50.0),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}