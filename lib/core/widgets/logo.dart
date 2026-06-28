import 'package:flutter/material.dart';
import 'package:website/core/constants/images.dart';
import 'package:website/core/helper/screen_type_helper.dart';

class Logo extends StatelessWidget {
  final double pageSize;

  const Logo({
    super.key,
    required this.pageSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pageSize,
      child: Image.asset(
        logoArvore,
        height: ScreenTypeHelper.isMobile(context: context) ? 120 : 180,
      ),
    );
  }
}
