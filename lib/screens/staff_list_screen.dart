import 'package:flutter/material.dart';

import '../widgets/staff_card.dart';

class StaffListScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Info'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return StaffCard();
        },
        itemCount: 17,
      ),
    );
  }
}

