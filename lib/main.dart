import 'package:flutter/material.dart';
import 'sidebar/sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x040F13),
          primaryColor: Colors.grey[800]
      ),
      home: SideBarLayout(),
    );
  }
}