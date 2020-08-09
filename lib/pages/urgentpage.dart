import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class UrgentPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60.0, 0.0, 32.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 15),
              child: Text(
                'Nomor Darurat',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              '110',
//              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Kepolisian',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '118 / 119',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ambulans',
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