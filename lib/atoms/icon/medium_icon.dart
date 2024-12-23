import 'package:flutter/material.dart';

/// * [MediumIcon] is a widget that shows a medium icon.
class MediumIcon extends StatelessWidget {

  /// * [icon] is the icon that will be shown.
  final IconData icon;

  /// * [color] is the color of the icon.
  final Color color;

  /// * [size] is the size of the icon.
  final double size;

  const MediumIcon({
    super.key,
    required this.icon,
    this.color = Colors.black,
    this.size = 32.0,
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