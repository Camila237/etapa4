import 'package:flutter/material.dart';

/// * [BodyText] is a widget that shows a small text.
class BodyText extends StatelessWidget {
  /// * [text] is the text that will be shown.
  final String text;

  /// * [color] is the color of the text.
  final Color color;

  /// * [fontWeight] is the weight of the text.
  final FontWeight? fontWeight;

  const BodyText({
    super.key,
    required this.text,
    required this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 15,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: color,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
