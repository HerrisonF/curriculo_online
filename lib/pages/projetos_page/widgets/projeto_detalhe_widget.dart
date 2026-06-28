import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/models/portfolio/portfolio.dart';

class ProjetoDetalheWidget extends StatelessWidget {
  final Portfolio portfolio;

  final CarouselSliderController _controller = CarouselSliderController();

  ProjetoDetalheWidget({super.key, required this.portfolio});

  Future<void> _openSite() async {
    final uri = Uri.parse(portfolio.link);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
        webOnlyWindowName: "_blank",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: ScreenTypeHelper.isMobile(context: context) ? 15 : 25,
      ),
      padding: EdgeInsets.all(
        ScreenTypeHelper.isMobile(context: context) ? 10 : 25,
      ),
      decoration: BoxDecoration(
        color: AZUL_ESCURO,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AZUL_EXTRA_ESCURO),
      ),
      child: Column(
        children: [
          _titulo(context),
          _modelo(),
          const SizedBox(height: 15),
          _descriccao(),
          const SizedBox(height: 15),
          _carrosel(context),
        ],
      ),
    );
  }

  Container _carrosel(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff0B1A2D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                carouselController: _controller,
                itemCount: portfolio.images.length,
                options: CarouselOptions(
                  height: 210,
                  enlargeCenterPage: true,
                  viewportFraction: ScreenTypeHelper.isMobile(context: context)
                      ? 0.9
                      : .3,
                  enlargeFactor: 0.2,
                  enableInfiniteScroll: true,
                ),
                itemBuilder: (_, index, __) {
                  return Image.asset(
                    portfolio.images[index],
                    fit: BoxFit.contain,
                  );
                },
              ),
              ScreenTypeHelper.isMobile(context: context)
                  ? const SizedBox(height: 25)
                  : const SizedBox(height: 25),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: OutlinedButton.icon(
                  onPressed: _openSite,
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(200, 55),
                    side: const BorderSide(color: AZUL_CLARINHO),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  iconAlignment: IconAlignment.end,
                  label: Text(
                    cliqueParaVisitarSite,
                    style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                  ),
                  icon: Container(
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: AZUL_CLARINHO),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(4),
                    child: const Icon(
                      Icons.north_east,
                      color: AZUL_CLARINHO,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (portfolio.images.length > 1)
            Positioned(
              left: 15,
              bottom: 10,
              child: _arrowButton(Icons.chevron_left, () {
                _controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              }),
            ),
          if (portfolio.images.length > 1)
            Positioned(
              right: 15,
              bottom: 10,
              child: _arrowButton(Icons.chevron_right, () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              }),
            ),
        ],
      ),
    );
  }

  Widget _arrowButton(IconData icon, VoidCallback onPressed) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: AZUL_ESCURO.withValues(alpha: .85),
            shape: BoxShape.circle,
            border: Border.all(color: AZUL_CLARINHO),
          ),
          child: Icon(icon, color: AZUL_CLARINHO),
        ),
      ),
    );
  }

  Text _descriccao() {
    return Text(
      portfolio.description,
      style: const TextStyle(color: BRANCO, fontSize: 20),
    );
  }

  Text _modelo() {
    return Text(
      portfolio.modelo,
      style: GoogleFonts.audiowide(color: AZUL_CLARINHO, fontSize: 20),
    );
  }

  Text _titulo(BuildContext context) {
    return Text(
      portfolio.title.toUpperCase(),
      style: GoogleFonts.audiowide(color: AZUL_CLARINHO, fontSize: 26),
      textAlign: ScreenTypeHelper.isMobile(context: context)
          ? TextAlign.center
          : TextAlign.start,
    );
  }
}
