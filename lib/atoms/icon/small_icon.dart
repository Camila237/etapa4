import 'package:flutter/material.dart';

/// * [SmallIcon] is a widget that shows a small icon.
class SmallIcon extends StatelessWidget {
  /// * [icon] is the icon that will be shown.
  final IconData icon;

  /// * [color] is the color of the icon.
  final Color color;

  /// * [size] is the size of the icon.
  final double size;

  const SmallIcon({
    super.key,
    required this.icon,
    this.color = Colors.black,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}