import 'package:flutter/material.dart';

class StaffListScreen extends StatelessWidget {

  static const String routeName = '/';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff List'),
      ),
      body: Center(
        child: Text('Staff List Screen'),
      ),
    );
  }
}