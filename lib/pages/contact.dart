import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class ContactPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}