import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/models/portfolio/portfolio.dart';

class PortfolioItemWidget extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioItemWidget({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          hoverColor: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          onTap: () async {
            final Uri url = Uri.parse(portfolio.link);
            if (await canLaunchUrl(url)) {
              await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
                webOnlyWindowName: '_blank',
              );
            }
          },
          child: Container(
            width: ScreenTypeHelper.isMobile(context: context) ?  300 : 350,
            height: ScreenTypeHelper.cardResumeComponentWidth(
              context: context,
            ),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xff8BE9FF).withValues(alpha: .85),
                  const Color(0xff63D6FF).withValues(alpha: .55),
                  const Color(0xff1B4866).withValues(alpha: .35),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff61D9FF).withValues(alpha: .35),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.3),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AZUL_ESCURO.withValues(alpha: .85),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: .08),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: AZUL_CLARO,
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            child: const Icon(
                              Icons.north_east,
                              color: AZUL_CLARO,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              portfolio.title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              portfolio.images.first,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(top: 5, right: 15),
                              child: Center(
                                child: Text(
                                  portfolio.tecs,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
