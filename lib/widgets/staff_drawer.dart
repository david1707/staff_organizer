import 'package:flutter/material.dart';
import 'package:staff_organizer/screens/staff_info.dart';

import '../screens/staff_list_screen.dart';

class StaffDrawer extends StatelessWidget {
  final String currentRouteName;

  StaffDrawer(this.currentRouteName);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            child: Text('Drawer header'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('List Staff'),
            onTap: () {
              if (currentRouteName != StaffListScreen.routeName)
                Navigator.of(context).pushNamed(StaffListScreen.routeName);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Create Staff'),
            onTap: () {
              if (currentRouteName != StaffInfoScreen.routeName)
                Navigator.of(context).pushNamed(StaffInfoScreen.routeName);
              else
                Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
