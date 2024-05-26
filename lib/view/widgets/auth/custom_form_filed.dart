import 'package:flutter/material.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled({
    super.key,
    required this.labelText,
    this.hintText,
    this.suffix,
    this.obscureText,
    this.controller,
    this.keyboardType,
    this.validator,
    this.onIconTap,
  });

  final String labelText;
  final String? hintText;
  final IconData? suffix;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function()? onIconTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText == null || obscureText == false ? false : true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              labelText,
              style: FontStyles.font18,
            ),
          ),
          hintText: hintText,
          suffixIcon: InkWell(
            onTap: onIconTap,
            child: Icon(suffix),
          ),
        ),
      ),
    );
  }
}
