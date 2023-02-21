import 'package:carousel_slider/carousel_slider.dart';
import 'package:curriculo_online/core/models/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;

class PortfolioFullItemWidget extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioFullItemWidget({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Text(
                    portfolio.description,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  child: CarouselSlider(
                    options: CarouselOptions(height: 400.0),
                    items: portfolio.images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(i);
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          ResponsiveRowColumnItem(child: _buttonSeeMore()),
        ],
      ),
    );
  }

  Widget _buttonSeeMore() {
    return InkWell(
      onTap: (){
        html.window.open(portfolio.link, "_blank");
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        child: const Text(
          "Ir ao site",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
