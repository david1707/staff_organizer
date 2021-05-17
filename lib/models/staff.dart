import 'package:flutter/foundation.dart';

enum Roles {
  Recepcionist,
  HR,
  CEO,
  Manager,
  Accountant,
  Developer,
}

class Staff {
  final String photoUrl;
  final String name;
  final String surnames;
  final Roles role;

  Staff({
    @required this.photoUrl,
    @required this.name,
    @required this.surnames,
    @required this.role,
  });

  String printRole() {
    if(this.role == Roles.Recepcionist)
      return 'Recepcionist';
    else if(this.role == Roles.HR)
      return 'HR';
    else if(this.role == Roles.CEO)
      return 'CEO';
    else if(this.role == Roles.Manager)
      return 'Manager';
    else if(this.role == Roles.Accountant)
      return 'Accountant';
    else if(this.role == Roles.Developer)
      return 'Developer';
    return 'Unknown';
  }
}
