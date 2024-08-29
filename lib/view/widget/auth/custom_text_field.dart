import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.image,
    this.keyboardType,
    this.obscureText = false,
    this.onTapSuffixIcon,
    this.onTap,
    this.onFieldSubmitted,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.minLines = 1,
    this.height = 64,
    this.width,
    this.prefixIcon,
    this.focusNode,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? image;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function()? onTapSuffixIcon;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final int maxLines;
  final int? maxLength;
  final int minLines;
  final double height;
  final double? width;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? 320,
      child: TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        focusNode: focusNode,
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
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.red),
          ),
          filled: true,
          fillColor: const Color(0xFF93C0E1).withOpacity(0.1),
          prefixIcon: prefixIcon,
          prefixIconConstraints: const BoxConstraints(
              maxHeight: 25, minHeight: 25, minWidth: 40, maxWidth: 40),
          suffixIcon: InkWell(
              onTap: onTapSuffixIcon,
              child: image == null
                  ? Container()
                  : Image.asset(image!, width: 35, height: 35)),
          suffixIconConstraints: const BoxConstraints(
              maxHeight: 60, minHeight: 10, minWidth: 80, maxWidth: 180),
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
