import 'package:curriculo_online/core/models/carrer_full.dart';
import 'package:curriculo_online/pages/home_page/home_page_controller.dart';
import 'package:curriculo_online/pages/home_page/widgets/carrer_item_widget.dart';
import 'package:curriculo_online/pages/home_page/widgets/shimmer_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CarrerTimeLineComponent extends StatefulWidget {
  const CarrerTimeLineComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<CarrerTimeLineComponent> createState() =>
      _CarrerTimeLineComponentState();
}

class _CarrerTimeLineComponentState extends State<CarrerTimeLineComponent> {
  final HomePageController homePageController =
      GetIt.I.get<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 500, maxHeight: 1000),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Experiência",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 10,
            child: ValueListenableBuilder(
              valueListenable: homePageController.carrerFull,
              builder: (context, carrer, widget) {
                return carrer.items.isEmpty
                    ? _shimmerLoading()
                    : _listView(carrer);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _listView(CarrerFull carrerFull) {
    return ListView.builder(
      itemCount: carrerFull.items.length,
      itemBuilder: (context, index) {
        return TimelineTile(
          alignment: TimelineAlign.start,
          lineXY: 0.1,
          isFirst: index == 0,
          isLast: index == carrerFull.items.length - 1,
          indicatorStyle: IndicatorStyle(
            width: 40,
            height: 40,
            indicator: _indicator(carrerFull.items[index].iconCode),
          ),
          beforeLineStyle: LineStyle(
            color: Colors.blue.shade300,
          ),
          endChild: CarrerItemWidget(
            carrerItem: carrerFull.items[index],
          ),
        );
      },
    );
  }

  ShimmerLoadingWidget _shimmerLoading() {
    return ShimmerLoadingWidget(
      howManyChilds: 3,
      child: Container(
        width: 500,
        height: 400,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget _indicator(int iconCode) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.blue,
            width: 4,
          ),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Icon(
          IconData(iconCode, fontFamily: 'MaterialIcons'),
        ),
      ),
    );
  }
}
