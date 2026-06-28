import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/linha_habilidades_component/circulo_point_widget.dart';
import 'package:website/core/components/linha_habilidades_component/linha_habilidades_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/pages/sobre_mim_page/sobre_mim_page_controller.dart';

class SobreMimTrajetoriaComponent extends StatefulWidget {
  final SobreMimPageController controller;

  const SobreMimTrajetoriaComponent({
    super.key,
    required this.controller,
  });

  @override
  State<SobreMimTrajetoriaComponent> createState() =>
      _SobreMimTrajetoriaComponentState();
}

class _SobreMimTrajetoriaComponentState
    extends State<SobreMimTrajetoriaComponent> {
  @override
  void initState() {
    widget.controller.getCarrerResumed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 750,
      child: Column(
        children: [
          const SizedBox(height: 25),
          const LinhaHabilidadesComponent(
            texto: tituloTrajetoria,
          ),
          const SizedBox(height: 40),
          _trajetoria(),
        ],
      ),
    );
  }

  Widget _trajetoria() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 15),
        child: ValueListenableBuilder(
          valueListenable: widget.controller.carreiraResumed.itens,
          builder: (context, itens, _) {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itens.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.8,
                crossAxisSpacing: 15,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                final item = itens[index];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: SizedBox(
                        width: 40,
                        height: 4,
                        child: CirculoPointWidget(),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: GoogleFonts.iceland(
                              color: BRANCO,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            item.subTitle,
                            style: GoogleFonts.iceland(
                              color: BRANCO,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            item.duration,
                            style: GoogleFonts.montserrat(
                              color: BRANCO,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
