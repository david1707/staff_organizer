import 'package:flutter/material.dart';

import 'package:dropdown_formfield/dropdown_formfield.dart';

import '../models/staff.dart';
import '../widgets/staff_update_textformfield.dart';

class StaffInfoScreen extends StatefulWidget {
  static const String routeName = '/staff-info';

  @override
  _StaffInfoScreenState createState() => _StaffInfoScreenState();
}

class _StaffInfoScreenState extends State<StaffInfoScreen> {
  String _staffRole = '';
  Staff staff;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    staff = ModalRoute.of(context).settings.arguments as Staff;
    if (_staffRole.isEmpty) _staffRole = staff.role;

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
        padding: const EdgeInsets.only(top: 12.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                StaffUpdateTextFormField('Name', staff.name),
                StaffUpdateTextFormField('Surname(s)', staff.surnames),
                // TODO Change URL to real image
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Photo URL',
                      contentPadding: EdgeInsets.symmetric(horizontal: 12)),
                  initialValue: '${staff.photoName}',
                  textInputAction: TextInputAction.next,
                ),
                // TODO Improve styling
                DropDownFormField(
                  titleText: 'Role',
                  hintText: 'Please choose one role',
                  value: _staffRole,
                  // onSaved: (value) {
                  //   setState(() {
                  //     _myActivity = value;
                  //   });
                  // },
                  onChanged: (value) {
                    setState(() {
                      _staffRole = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Recepcionist",
                      "value": "Recepcionist",
                    },
                    {
                      "display": "HR",
                      "value": "HR",
                    },
                    {
                      "display": "CEO",
                      "value": "CEO",
                    },
                    {
                      "display": "Manager",
                      "value": "Manager",
                    },
                    {
                      "display": "Accountant",
                      "value": "Accountant",
                    },
                    {
                      "display": "Developer",
                      "value": "Developer",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
