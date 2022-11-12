// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/theme/color.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget(
      {super.key,
      required this.controller,
      this.prefixIcon,
      required this.hintText});
  final TextEditingController controller;
  Widget? prefixIcon;
  final String hintText;
  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  TextEditingController get controller => widget.controller;
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: MainColor.instance.blueColor, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          ),
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: MainColor.instance.purpleColor, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          ),
        ),
      ),
    );
  }
}
