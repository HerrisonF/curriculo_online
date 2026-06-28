import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  final int howManyChilds;
  final Widget child;
  final bool verticalDirection;

  const ShimmerLoadingWidget({
    Key? key,
    required this.howManyChilds,
    required this.child,
    this.verticalDirection = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child:  verticalDirection ?
      ListView(
        children: _childrenGenerator(),
      ) : ListView(
        scrollDirection: Axis.horizontal,
        children: _childrenGenerator(),
      )
    );
  }

  List<Widget> _childrenGenerator(){
    return List.generate(
      howManyChilds,
          (index) => child,
    );
  }
}
