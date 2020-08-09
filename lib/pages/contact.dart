import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class ContactPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 3.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 15),
              child: Text(
                'Contact Person',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Email:',
//              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '13519038@std.stei.itb.ac.id',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ID Line:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ridhodaffasyah',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}