import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorTextButton extends StatelessWidget {
  const ColorTextButton({
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onTap,

    super.key
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
