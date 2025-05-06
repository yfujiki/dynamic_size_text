import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  final TextStyle? style;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final bool? isMultiline;
  final VoidCallback? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final int? minLines;
  final int? maxLines;
  final Color? cursorColor;
  final EdgeInsets? scrollPadding;
  final TextInputType? keyboardType;
  final bool? enabled;
  final String? Function(String?)? validator;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;

  const MyTextFormField({
    this.controller,
    this.hintText,
    this.style,
    this.focusNode,
    this.scrollPadding,
    this.isMultiline,
    this.obscureText,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.minLines,
    this.maxLines,
    this.cursorColor,
    this.keyboardType,
    this.onChanged,
    this.enabled,
    this.validator,
    this.decoration,
    this.inputFormatters,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.0),
      ),
      child: TextFormField(
        enabled: enabled,
        focusNode: focusNode,
        controller: controller,
        style: style,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        minLines: minLines,
        maxLines: maxLines ?? 1,
        onEditingComplete: onEditingComplete,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: cursorColor,
        keyboardType: keyboardType,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
        decoration: decoration,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
