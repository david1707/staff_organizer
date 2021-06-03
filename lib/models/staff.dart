import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Staff {
  String photoName;
  String name;
  String surnames;
  String role;
  String email;
  String phone;
  String description;

  Staff({
    @required this.photoName,
    @required this.name,
    @required this.surnames,
    @required this.role,
    @required this.email,
    @required this.phone,
    this.description,
  });

  Staff.empty({
    this.photoName = '',
    this.name = '',
    this.surnames = '',
    this.role = '',
    this.email = '',
    this.phone = '',
    this.description = '',
  });

  void createNewStaff() async {
    print('ENTRA');
    inspect(this);
    if (this.name.isNotEmpty &&
        this.surnames.isNotEmpty &&
        this.role.isNotEmpty &&
        this.email.isNotEmpty &&
        this.phone.isNotEmpty &&
        this.description.isNotEmpty) {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('staff');
      await collectionReference.doc().set({
        'name': this.name,
        'surnames': this.surnames,
        'role': this.role,
        'email': this.email,
        'phone': this.phone,
        'description': this.description,
      });
    }
  }
}
