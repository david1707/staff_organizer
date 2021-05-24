import 'package:flutter/material.dart';

import '../models/staff.dart';
import '../screens/staff_info.dart';

class StaffCard extends StatelessWidget {
  final Staff staff;

  StaffCard(this.staff);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            StaffInfoScreen.routeName,
            arguments: staff,
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  minRadius: 30,
                  backgroundImage: NetworkImage(
                    staff.photoUrl,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    Text(
                      '${staff.name} ${staff.surnames}',
                    ),
                    Text(
                      '${staff.printRole()}',
                      style: TextStyle(
                          color: Colors.grey, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}