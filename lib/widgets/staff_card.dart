import 'package:flutter/material.dart';

class StaffCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              minRadius: 40,
              backgroundImage: NetworkImage(
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.BKCsfzrdE5bL3h63OyuvSwAAAA%26pid%3DApi&f=1'),
            ),
          ),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Column(
              children: [
                Text(
                  'Name and surname(s)',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Role at the company',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
