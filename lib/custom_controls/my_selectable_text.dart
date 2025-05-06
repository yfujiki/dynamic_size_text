import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

class MySelectableText extends StatelessWidget {
  final String data;
  final FocusNode? focusNode;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool showCursor;
  final bool autofocus;
  final int? minLines;
  final int? maxLines;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final ScrollPhysics? scrollPhysics;
  final DragStartBehavior dragStartBehavior;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final GestureTapCallback? onTap;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final void Function(TextSelection, SelectionChangedCause?)?
      onSelectionChanged;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final TextMagnifierConfiguration? magnifierConfiguration;

  const MySelectableText(
    this.data, {
    super.key,
    this.focusNode,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.showCursor = false,
    this.autofocus = false,
    this.minLines,
    this.maxLines,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.scrollPhysics,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.onTap,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.onSelectionChanged,
    this.contextMenuBuilder,
    this.magnifierConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      data,
      key: key,
      focusNode: focusNode,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textScaler: const TextScaler.linear(1.0),
      showCursor: showCursor,
      autofocus: autofocus,
      minLines: minLines,
      maxLines: maxLines,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorColor: cursorColor,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      scrollPhysics: scrollPhysics,
      dragStartBehavior: dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection,
      selectionControls: selectionControls,
      onTap: onTap,
      semanticsLabel: semanticsLabel,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
      onSelectionChanged: onSelectionChanged,
      contextMenuBuilder: contextMenuBuilder,
      magnifierConfiguration: magnifierConfiguration,
    );
  }
}
