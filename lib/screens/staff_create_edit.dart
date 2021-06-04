import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:image_picker/image_picker.dart';

import '../models/staff.dart';
import '../widgets/staff_update_textformfield.dart';
import '../widgets/staff_drawer.dart';

class StaffInfoScreen extends StatefulWidget {
  static const String routeName = '/staff-create-edit';

  @override
  _StaffInfoScreenState createState() => _StaffInfoScreenState();
}

class _StaffInfoScreenState extends State<StaffInfoScreen> {
  final formKey = new GlobalKey<FormState>();

  String _staffRole = '';
  Staff staff;
  File _storedImage;
  TextEditingController _nameController;
  TextEditingController _surnamesController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _descriptionController;

  Future<void> loadNewImage(ImageSource source) async {
    final imageFile = await ImagePicker().getImage(source: source);

    setState(() {
      if (imageFile != null) {
        _storedImage = File(imageFile.path);
        print(_storedImage.path);
      }
    });
  }

  void newStaffCheck() {
    // TODO: Simplify this with an ID when we fetch the ID from Firebase
    if (staff?.name == null) {
      staff = ModalRoute.of(context).settings.arguments as Staff;

      // TODO: Clean this
      if (_staffRole.isEmpty && staff?.role != null) {
        _staffRole = staff?.role;
        _nameController = TextEditingController(text: staff.name);
        _surnamesController = TextEditingController(text: staff.surnames);
        _emailController = TextEditingController(text: staff.surnames);
        _phoneController = TextEditingController(text: staff.surnames);
        _descriptionController = TextEditingController(text: staff.surnames);
      } else {
        staff = Staff.empty();
        _nameController = TextEditingController(text: '');
        _surnamesController = TextEditingController(text: '');
        _emailController = TextEditingController(text: '');
        _phoneController = TextEditingController(text: '');
        _descriptionController = TextEditingController(text: '');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    newStaffCheck();

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
              staff.name = _nameController.text;
              staff.surnames = _surnamesController.text;
              staff.email = _emailController.text;
              staff.phone = _phoneController.text;
              staff.description = _descriptionController.text;
              staff.role = _staffRole;
              staff.createNewStaff();
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
                StaffUpdateTextFormField('Name', _nameController),
                StaffUpdateTextFormField('Surname(s)', _surnamesController),
                StaffUpdateTextFormField('Email', _emailController),
                StaffUpdateTextFormField('Phone', _phoneController),
                StaffUpdateTextFormField('Description', _descriptionController),
                DropDownFormField(
                  titleText: 'Role',
                  hintText: 'Please choose one role',
                  value: _staffRole,
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
                        child: _storedImage != null
                            ? Image.file(
                                _storedImage,
                                height: 100,
                              )
                            : null,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          children: [
                            TextButton(
                              child: Text('Load new image'),
                              onPressed: () =>
                                  loadNewImage(ImageSource.gallery),
                            ),
                            TextButton(
                              child: Text('Take a picture'),
                              onPressed: () => loadNewImage(ImageSource.camera),
                            ),
                          ],
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
      drawer: StaffDrawer(StaffInfoScreen.routeName),
    );
  }
}
