import 'package:curriculo_online/pages/home_page/components/skills_resume_component.dart';
import 'package:curriculo_online/pages/home_page/widgets/my_personal_info_widget.dart';
import 'package:curriculo_online/pages/home_page/widgets/my_picture_widget.dart';
import 'package:flutter/material.dart';

///Utilizado pela responsividade para apresentar o conteúdo de forma horizontal
///para os dispositivos maiores que o mobile
class HeaderHorizontalComponent extends StatelessWidget {
  final Function linkedinCallback;
  final Function githubCallback;

  const HeaderHorizontalComponent({
    Key? key,
    required this.linkedinCallback,
    required this.githubCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade200,
            Colors.lightBlueAccent.shade100,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              const MyPictureWidget(
                height: 160,
                width: 160,
                borderRadius: 4,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: MyPersonalInfoWidget(
                  githubCallback: githubCallback,
                  linkedinCallback: linkedinCallback,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            color: Colors.black38,
          ),
          const SkillsResumeComponent(),
        ],
      ),
    );
  }
}
