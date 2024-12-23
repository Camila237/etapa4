import 'package:flutter/material.dart';

/// * [TitleText] is a widget that shows a small text.
class TitleText extends StatelessWidget {
  /// * [text] is the text that will be shown.
  final String text;

  /// * [textAlign] is the alignment of the text.
  final TextAlign textAlign;

  /// * [color] is the color of the text.
  final Color color;

  const TitleText({
    super.key,
    required this.text,
    this.textAlign = TextAlign.start,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
