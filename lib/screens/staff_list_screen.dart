import 'package:flutter/material.dart';

import '../widgets/staff_list_builder.dart';
import '../widgets/staff_drawer.dart';

class StaffListScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Info'),
      ),
      body: StaffListBuilder(),
      drawer: StaffDrawer(routeName),
    );
  }
}
