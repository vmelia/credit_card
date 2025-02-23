import 'package:flutter/material.dart';

import '../config.dart';

class ArrowButtonWidget extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;
  const ArrowButtonWidget({super.key, required this.margin, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: ColoursConfig.primaryWhite,
            borderRadius: BorderRadius.circular(15),
            boxShadow: ColoursConfig.neumorpShadow),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
