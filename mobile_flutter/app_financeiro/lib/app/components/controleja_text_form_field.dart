import 'package:flutter/material.dart';

class ControlejatextFormField extends TextFormField{
  ControlejatextFormField({
    ValueChanged<String> onChange,
    FormFieldValidator<String> validator,
    @required String label,
    bool obscureText,
    double borderRadius,
    double fontSize,
    double padding,
    TextEditingController controller,
    IconData icon,
  }) : super(
    onChanged: onChange,
    validator: validator,
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      prefixIcon: icon != null ? Icon(icon) : null,
      contentPadding: padding ?? EdgeInsets.only(left:30, top:20, bottom:20),
      labelText: label,
      labelStyle: TextStyle(fontSize: fontSize  ?? 20),
      border: OutlineInputBorder(
       borderRadius: BorderRadius.circular(borderRadius ?? 15),
      )
    ),
  );
}