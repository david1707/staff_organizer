import 'package:flutter/material.dart';

class StaffUpdateTextFormField extends StatelessWidget {

  StaffUpdateTextFormField(this.labelText, this.value);

  final String labelText;
  final String value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: labelText,
          contentPadding: EdgeInsets.symmetric(horizontal: 12)),
      initialValue: value,
      textInputAction: TextInputAction.next,
    );
  }
}
