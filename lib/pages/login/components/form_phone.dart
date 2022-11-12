// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/statefull/text_form_field.dart';

class FormPhoneWidget extends StatelessWidget {
  FormPhoneWidget({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
        controller: controller,
        hintText: 'Email',
        prefixIcon: const Icon(Icons.person, size: 20.0));
  }
}
