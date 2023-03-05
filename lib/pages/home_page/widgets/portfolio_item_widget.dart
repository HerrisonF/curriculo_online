import 'package:curriculo_online/core/models/portfolio.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class PortfolioItemWidget extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioItemWidget({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: MaterialStateColor.resolveWith(
            (states) => Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.lightBlueAccent,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
          ],
        ),
        width: 250,
        height: 250,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            portfolio.images.first,
          ),
        ),
      ),
      onTap: (){
        html.window.open(portfolio.link, "_blank");
      },
    );
  }
}
