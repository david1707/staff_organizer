import 'package:flutter/material.dart';

import '../models/staff.dart';
import '../widgets/staff_card.dart';

class StaffListScreen extends StatelessWidget {
  static const String routeName = '/';

  List<Staff> staffList = [
    Staff(
      name: 'David',
      surnames: 'Membrives',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.abdn.ac.uk%2Fnews%2Fimages%2Fmasc_average_male_rdax_450x600.jpg&f=1&nofb=1',
      role: Roles.CEO,
    ),
    Staff(
      name: 'Diana',
      surnames: 'Belliure',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.robnicholls.co.uk%2Ffiles%2Faverage-yamahito.jpg&f=1&nofb=1',
      role: Roles.Manager,
    ),
    Staff(
      name: 'Han',
      surnames: 'Yong',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.abdn.ac.uk%2Fnews%2Fimages%2Fmasc_average_male_rdax_450x600.jpg&f=1&nofb=1',
      role: Roles.Accountant,
    ),
    Staff(
      name: 'Siyanda',
      surnames: 'Nea',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.robnicholls.co.uk%2Ffiles%2Faverage-yamahito.jpg&f=1&nofb=1',
      role: Roles.Developer,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Info'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return StaffCard(staffList[index]);
        },
        itemCount: staffList.length,
      ),
    );
  }
}
