import 'package:flutter/material.dart';

import '../models/staff.dart';

class StaffInfoScreen extends StatefulWidget {
  static const String routeName = '/staff-info';

  @override
  _StaffInfoScreenState createState() => _StaffInfoScreenState();
}

class _StaffInfoScreenState extends State<StaffInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final staff = ModalRoute.of(context).settings.arguments as Staff;

    return Scaffold(
      appBar: AppBar(
        title: Text('Info ${staff.name} ${staff.surnames}'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () {
              // Update and, if confirmed, go back to the Staff List Screen
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  initialValue: '${staff.name}',
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Surname(s)'),
                  initialValue: '${staff.surnames}',
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Photo URL'),
                  initialValue: '${staff.photoUrl}',
                  textInputAction: TextInputAction.next,
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
