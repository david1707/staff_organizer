import 'package:flutter/material.dart';

import '../widgets/staff_card.dart';
import '../models/staff_data.dart';
import '../models/staff.dart';

class StaffListScreen extends StatelessWidget {
  static const String routeName = '/';

  List<Staff> staffList = StaffData().staffList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Info'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            // Change to ID after moving it to a Database
            key: ValueKey(staffList[index].name + staffList[index].surnames),
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
            ),
            child: StaffCard(
              staffList[index],
            ),
          );
        },
        itemCount: staffList.length,
      ),
    );
  }
}
