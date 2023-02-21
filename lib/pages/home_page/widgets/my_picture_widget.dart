import 'package:flutter/material.dart';

class MyPictureWidget extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;

  const MyPictureWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset("assets/images/foto.png"),
      ),
    );
  }
}
