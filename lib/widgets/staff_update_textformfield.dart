import 'dart:developer';

import 'package:flutter/material.dart';

class StaffUpdateTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;

  StaffUpdateTextFormField(this.labelText, this.textController);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: const Color(0xff08C6Ab),
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
