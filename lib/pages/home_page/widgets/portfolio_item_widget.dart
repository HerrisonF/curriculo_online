import 'package:curriculo_online/core/models/portfolio/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioItemWidget extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioItemWidget({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: WidgetStateColor.resolveWith(
        (states) => Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue.shade50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                child: Text(
                  portfolio.title,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  portfolio.images.first,
                  height: 220,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () async {
        final Uri url = Uri.parse(portfolio.link);
        if (await canLaunchUrl(url)) {
          await launchUrl(
            url,
            mode: LaunchMode.externalApplication, // abre fora do app
            webOnlyWindowName: '_blank', // garante nova aba no web
          );
        }
      },
    );
  }
}
