import 'package:flutter/material.dart';
import 'package:website/core/constants/color.dart';

class CirculoPointWidget extends StatelessWidget {
  const CirculoPointWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: AZUL_BOLINHA,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AZUL_BOLINHA.withValues(alpha: 0.8),
            blurRadius: 15,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: AZUL_BOLINHA.withValues(alpha: 0.9),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}
