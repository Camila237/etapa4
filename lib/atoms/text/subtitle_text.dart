import 'package:flutter/material.dart';

/// * [SubtitleText] is a widget that shows a medium text.
class SubtitleText extends StatelessWidget {
  /// * [text] is the text that will be shown.
  final String text;

  /// * [color] is the color of the text.
  final Color color;

  const SubtitleText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );
  }
}
