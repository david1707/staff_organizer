import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:staff_organizer/widgets/staff_card.dart';

import '../models/staff.dart';
import '../models/staff_data.dart';

class StaffListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StaffData>(builder: (context, staffData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            Staff staff = staffData.staffList[index];
            return Dismissible(
              // Change to ID after moving it to a Database
              key: ValueKey(staff.name + staff.surnames),
              background: Container(
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              child: StaffCard(
                staff,
              ),
            );
          },
          itemCount: staffData.staffList.length);
    });
  }
}
