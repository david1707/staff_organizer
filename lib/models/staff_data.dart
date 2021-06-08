import './staff.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class StaffData extends ChangeNotifier {
  List<Staff> _staffList = [];

  StaffData() {
    FirebaseFirestore.instance.collection('staff').get().then((docSnapshot) {
      for (var doc in docSnapshot.docs) {
        Staff _staff = Staff.fromJSON(doc.data());
        _staffList.add(_staff);
      }
      notifyListeners();
    });
  }

  List<Staff> get staffList {
    return _staffList;
  }
}
