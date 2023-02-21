import 'package:curriculo_online/core/models/portfolio.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class PortfolioItemWidget extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioItemWidget({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        hoverColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(8)
          ),
          height: 500,
          width: 500,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Image.asset(
            portfolio.images.first,
            fit: BoxFit.scaleDown,
          ),
        ),
        onTap: (){
          html.window.open(portfolio.link, "_blank");
        },
      ),
    );
  }
}
