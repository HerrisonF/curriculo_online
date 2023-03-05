import 'package:carousel_slider/carousel_slider.dart';
import 'package:curriculo_online/core/models/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                portfolio.title,
                style: GoogleFonts.mukta(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Text(
                portfolio.description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.mukta(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: portfolio.images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(i, fit: BoxFit.fill),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: _buttonSeeMore(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonSeeMore() {
    return InkWell(
      onTap: () {
        html.window.open(portfolio.link, "_blank");
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
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
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
