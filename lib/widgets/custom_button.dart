// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final Color? borderColor;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    required this.width,
    this.height,
    this.child,
    this.color,
    this.onPressed,
    this.borderRadius,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ??
          () {
            print('Custom Button pressed');
          },
      style: TextButton.styleFrom(
        fixedSize: Size(width!, height ?? 40),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius ?? 28),
        ),
        backgroundColor: color ?? Colors.blueGrey,
      ),
      child: child ?? const SizedBox(),
    );
  }
}
