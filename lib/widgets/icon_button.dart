import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {},
        constraints: const BoxConstraints.tightFor(width: 40),
        color: Colors.grey[600],
        icon: icon,
        splashRadius: 23,
        splashColor: Colors.grey[500],
      ),
    );
  }
}
