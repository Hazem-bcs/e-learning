import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.image,
    this.keyboardType,
    this.obscureText = false,
    this.onTap,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.minLines = 1,
    this.height = 64,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? image;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final int maxLines;
  final int? maxLength;
  final int minLines;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 320,
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        style: const TextStyle(fontSize: 18),
        controller: controller,
        maxLines: maxLines,
        maxLength: maxLength,
        minLines: minLines,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 18, color: Color(0x99000000)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          filled: true,
          fillColor: const Color(0xFF93C0E1).withOpacity(0.1),
          suffixIcon: InkWell(
              onTap: onTap,
              child: image == null
                  ? Container()
                  : Image.asset(image!, width: 35, height: 35)),
          suffixIconConstraints: const BoxConstraints(
              maxHeight: 60, minHeight: 10, minWidth: 80, maxWidth: 180),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
