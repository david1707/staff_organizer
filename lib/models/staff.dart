import 'package:flutter/foundation.dart';

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

  Staff.create({
    this.photoName = '',
    this.name = '',
    this.surnames = '',
    this.role = '',
  });
}
