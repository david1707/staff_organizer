import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/staff_create_edit.dart';
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
            decoration: BoxDecoration(
              color: kDrawerHeaderColour,
              image: DecorationImage(
                image: AssetImage('assets/images/drawerImage.jpg'),
                fit: BoxFit.fill
              ),
            ),
            child: null,
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
              Navigator.of(context).pushNamed(StaffInfoScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
