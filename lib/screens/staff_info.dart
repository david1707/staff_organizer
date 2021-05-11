import 'package:flutter/material.dart';

class StaffInfoScreen extends StatelessWidget {

  static const String routeName = '/staff-info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Info'),
      ),
      body: Center(
        child: Text('Staff Info Screen'),
      ),
    );
  }
}