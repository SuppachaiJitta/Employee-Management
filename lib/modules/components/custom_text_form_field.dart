import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? labelText;
  final Function(String?)? validator;
  const CustomTextFormField(
    this.textEditingController, {
    this.labelText,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: (value) => validator != null ? validator!(value) : null,
    );
  }
}
