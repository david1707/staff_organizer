import 'package:flutter/material.dart';

import '../constants.dart';

class StaffUpdateTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;
  final Function validation;

  StaffUpdateTextFormField({
    @required this.labelText,
    @required this.textController,
    @required this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          primaryColor: kStaffUpdateTextFormFieldPrimaryColour,
          hintColor: kStaffUpdateTextFormFieldHintColour),
      child: TextFormField(
        minLines: 1,
        maxLines: labelText != 'Description' ? 1 : 4,
        controller: textController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            labelText: labelText,
            contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        textInputAction: TextInputAction.next,
        validator: validation,
      ),
    );
  }
}
