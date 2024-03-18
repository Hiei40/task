import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {
  final TextEditingController newPasswordController;
  final bool obscureText;
  final String? label;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final void Function()?  onTap;
  const CustomTextform({
    Key? key,
    required this.newPasswordController,
    required this.obscureText,
    required this.label,
    required   this.validator,
    required  this.suffixIcon, this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: newPasswordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            child: Icon(suffixIcon),
            onTap:onTap ,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(),
          ),
          labelText: label, // Label text for better usability
        ),
      ),
    );
  }
}
