import 'package:flutter/material.dart';

class MyTooltip extends StatelessWidget {
  final String? message;
  final InlineSpan? richMessage;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? verticalOffset;
  final bool? preferBelow;
  final bool? excludeFromSemantics;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final Duration? waitDuration;
  final Duration? showDuration;
  final TooltipTriggerMode? triggerMode;
  final bool? enableFeedback;
  final VoidCallback? onTriggered;
  final Widget? child;

  const MyTooltip({
    super.key,
    this.message,
    this.richMessage,
    this.height,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.excludeFromSemantics,
    this.decoration,
    this.textStyle,
    this.waitDuration,
    this.showDuration,
    this.triggerMode,
    this.enableFeedback,
    this.onTriggered,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final fontSize = textStyle?.fontSize == null
        ? 14 / MediaQuery.textScaleFactorOf(context)
        : textStyle!.fontSize! / MediaQuery.textScaleFactorOf(context);
    final style = textStyle == null
        ? TextStyle(fontSize: fontSize)
        : textStyle!.copyWith(fontSize: fontSize);

    return Tooltip(
      message: message,
      richMessage: richMessage,
      height: height,
      padding: padding,
      margin: margin,
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      decoration: decoration,
      textStyle: style,
      waitDuration: waitDuration,
      showDuration: showDuration,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      onTriggered: onTriggered,
      child: child,
    );
  }
}
