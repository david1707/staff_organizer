import 'package:flutter/material.dart';

import '../constants.dart';

class StaffUpdateTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;

  StaffUpdateTextFormField(this.labelText, this.textController);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: kStaffUpdateTextFormFieldPrimaryColour,
        hintColor: kStaffUpdateTextFormFieldHintColour
      ),
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
            labelText: labelText,
            contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
