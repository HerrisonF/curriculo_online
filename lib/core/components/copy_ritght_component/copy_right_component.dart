import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/constants/strings.dart';

class CopyRightComponent extends StatelessWidget {
  const CopyRightComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            direitosReservados,
            style: GoogleFonts.iceland(
              color: Colors.white70,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
