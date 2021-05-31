import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

import '../models/staff.dart';
import '../widgets/staff_update_textformfield.dart';

class StaffInfoScreen extends StatefulWidget {
  static const String routeName = '/staff-info';

  @override
  _StaffInfoScreenState createState() => _StaffInfoScreenState();
}

class _StaffInfoScreenState extends State<StaffInfoScreen> {
  final formKey = new GlobalKey<FormState>();
  String _staffRole = '';
  Staff staff;
  final _imagePicker = ImagePicker();
  PickedFile _pickedFile;
  File file;

  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImage() async {
    final pickedFile = await _imagePicker.getImage(source: ImageSource.gallery);

    setState(() {
      if(pickedFile != null) {
        file = File(pickedFile.path);
      }
    });
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
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Image.asset(
                          'assets/images/${staff.photoName}',
                          height: 100,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: ElevatedButton(
                          child: Text('Load new image'),
                          onPressed: pickImage,
                        ),
                      ),
                    ),
                  ],
                ),
                // TODO Improve styling
              ],
            ),
          ),
        ),
      ),
    );
  }
}
