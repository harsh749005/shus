import 'package:flutter/material.dart';

class Mybox extends StatelessWidget {
  // const Mybox({super.key});

  final Widget? child;
  final Color? color;
  const Mybox({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8)
      ),
      width: 200,
      height:200,
      child: child,
    );
  }
}
