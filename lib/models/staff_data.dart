import './staff.dart';

class StaffData {
  List<Staff> _staffList = [
    Staff(
      name: 'David',
      surnames: 'Membrives',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.abdn.ac.uk%2Fnews%2Fimages%2Fmasc_average_male_rdax_450x600.jpg&f=1&nofb=1',
      role: 'CEO',
    ),
    Staff(
      name: 'Diana',
      surnames: 'Belliure',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.robnicholls.co.uk%2Ffiles%2Faverage-yamahito.jpg&f=1&nofb=1',
      role: 'Manager',
    ),
    Staff(
      name: 'Han',
      surnames: 'Yong',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.abdn.ac.uk%2Fnews%2Fimages%2Fmasc_average_male_rdax_450x600.jpg&f=1&nofb=1',
      role: 'Accountant',
    ),
    Staff(
      name: 'Siyanda',
      surnames: 'Nea',
      photoUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.robnicholls.co.uk%2Ffiles%2Faverage-yamahito.jpg&f=1&nofb=1',
      role: 'Developer',
    ),
  ];

  List<Staff> get staffList {
    return _staffList;
  }
}
