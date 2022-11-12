// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/statefull/text_form_field.dart';

class FormPasswordWidget extends StatelessWidget {
  FormPasswordWidget({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: controller,
      hintText: 'Password',
      prefixIcon: const Icon(Icons.lock, size: 20.0),
    );
  }
}
