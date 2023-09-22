import 'package:boitoi/utlils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  final String? hinttext;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardtype;
  final TextInputAction? inputaction;
  final String? Function(String?)? validation;
  final bool abscureText;
  final int? maxline;
  void Function(String)? onChanged;
  final TextEditingController? controller;

  CustomTextfield({
    Key? key,
    this.maxline,
    this.hinttext,
    this.inputaction,
    this.onChanged,
    this.keyboardtype,
    this.prefixIcon,
    this.suffixIcon,
    this.validation,
    this.controller,
    required this.abscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: abscureText,
      onChanged: onChanged,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: Colors.black,
      keyboardType: keyboardtype,
      maxLines: maxline,
      autofocus: false,
      textInputAction: inputaction,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.black,fontSize: 13),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10, 20.0, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: white,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
      validator: validation,
    );
  }
}