import 'package:flutter/material.dart';

class GlassButtonBar extends StatefulWidget {
  final double bevel;
  final Offset blurOffset;
  final Color color;
  final EdgeInsets padding;
  final int selectedIndex;
  final Function(int) onPressed;

  GlassButtonBar({
    Key? key,
    this.bevel = 15.0,
    this.padding = const EdgeInsets.all(1.5),
    required this.selectedIndex,
    required this.onPressed,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade900,
        super(key: key);

  @override
  State<GlassButtonBar> createState() => _GlassButtonBarState();
}

class _GlassButtonBarState extends State<GlassButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
