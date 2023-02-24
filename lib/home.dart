import 'package:candle_stick_with_painter_custom/components/button_set_timer.dart';
import 'package:candle_stick_with_painter_custom/components/graphic_custom_painter.dart';
import 'package:candle_stick_with_painter_custom/helpers/colors.dart';
import 'package:candle_stick_with_painter_custom/model/data_candle_stickers_model.dart';
import 'package:candle_stick_with_painter_custom/model/list_data_candle_stickers_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListDataCandleStickersModel listDataCandleStickersModel = ListDataCandleStickersModel();

  @override
  Widget build(BuildContext context) {
    double sizeGraphic = MediaQuery.of(context).size.width - 48;
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(24),
                  child: CustomPaint(
                      size: Size.square(sizeGraphic),
                      painter: GraphicPainter(listCandle: listDataCandleStickersModel.listCandleModel))),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonSetTimerWidget(label: "7d", onPressed: () {}),
                    ButtonSetTimerWidget(label: "30d", onPressed: () {}),
                    ButtonSetTimerWidget(label: "90d", onPressed: () {})
                  ])
            ]));
  }
}
