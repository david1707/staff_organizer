import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Staff {
  String photoName;
  String name;
  String surnames;
  String role;

  Staff({
    @required this.photoName,
    @required this.name,
    @required this.surnames,
    @required this.role,
  });

  Staff.empty({
    this.photoName = '',
    this.name = '',
    this.surnames = '',
    this.role = '',
  });

  void createNewStaff() async {
    print('ENTRA');
    if (this.name.isNotEmpty &&
        this.surnames.isNotEmpty &&
        this.role.isNotEmpty) {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('staff');
      await collectionReference.doc().set({
        'name': this.name,
        'surnames': this.surnames,
        'role': this.role,
      });

      print('Done!');
    }
  }
}
