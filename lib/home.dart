import 'package:candle_stick_with_painter_custom/components/graphic_custom_painter.dart';
import 'package:candle_stick_with_painter_custom/helpers/colors.dart';
import 'package:candle_stick_with_painter_custom/model/data_candle_stickers_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DataCandleStickersModel dataCandleStickersModel = DataCandleStickersModel();

  @override
  Widget build(BuildContext context) {
    double sizeGraphic = MediaQuery.of(context).size.width - 48;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(24),
            child: CustomPaint(
                size: Size.square(sizeGraphic),
                painter: GraphicPainter(listCandle: dataCandleStickersModel.listCandleModel))));
  }
}
