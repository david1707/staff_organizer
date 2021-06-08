import 'dart:convert';

import './staff.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class StaffData {
  List<Staff> _staffList = [];

  void getInitialDataStaff() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('staff');
    QuerySnapshot staffList = await collectionReference.get();
    if (staffList.docs.length != 0) {
      for (var doc in staffList.docs) {
        Staff _staff = Staff.fromJSON(doc.data());
        _staffList.add(_staff);
      }
    }
  }

  List<Staff> get staffList {
    return _staffList;
  }
}
