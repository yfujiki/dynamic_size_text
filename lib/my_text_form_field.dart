import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  final TextStyle? style;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? hintText;
  final bool? isPassword;
  final bool? isMultiline;
  final VoidCallback? onEditingComplete;
  final Function(String)? onSubmitted;
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
    this.isPassword,
    this.onEditingComplete,
    this.onSubmitted,
    this.minLines,
    this.maxLines,
    this.cursorColor,
    this.keyboardType,
    this.onChanged,
    this.enabled,
    this.validator,
    this.decoration,
    this.inputFormatters,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fontSize = style?.fontSize == null
        ? 14 / MediaQuery.textScaleFactorOf(context)
        : style!.fontSize! / MediaQuery.textScaleFactorOf(context);
    final textStyle = style == null
        ? TextStyle(fontSize: fontSize)
        : style!.copyWith(fontSize: fontSize);

    return TextFormField(
      enabled: enabled,
      focusNode: focusNode,
      controller: controller,
      style: textStyle,
      onChanged: onChanged,
      obscureText: isPassword ?? false,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      onEditingComplete: onEditingComplete,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
      decoration: decoration,
      inputFormatters: inputFormatters,
    );
  }
}
