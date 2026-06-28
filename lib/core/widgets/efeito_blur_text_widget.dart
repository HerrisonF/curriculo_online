import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EfeitoBlurTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;

  const EfeitoBlurTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFD9F2FF),
            Color(0xFF9FD3FF),
            Color(0xFF6AA7D9),
            Color(0xFF3D648C),
          ],
          stops: [0.0, 0.25, 0.65, 1.0],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.audiowide(
          fontSize: fontSize,
        ),
      ),
    );
  }
}
