import './staff.dart';

class StaffData {
  List<Staff> _staffList = [
    Staff(
      name: 'David',
      surnames: 'Membrives',
      photoName: 'male.jpg',
      role: 'CEO',
    ),
    Staff(
      name: 'Diana',
      surnames: 'Belliure',
      photoName: 'female.jpg',
      role: 'Manager',
    ),
    Staff(
      name: 'Han',
      surnames: 'Yong',
      photoName: 'male.jpg',
      role: 'Accountant',
    ),
    Staff(
      name: 'Siyanda',
      surnames: 'Nea',
      photoName: 'female.jpg',
      role: 'Developer',
    ),
  ];

  List<Staff> get staffList {
    return _staffList;
  }
}
