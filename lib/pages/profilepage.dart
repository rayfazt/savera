import 'package:flutter/material.dart';
import '../nav_bloc/navigation_bloc.dart';

class ProfilePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profil",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}