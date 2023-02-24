import 'package:candle_stick_with_painter_custom/helpers/colors.dart';
import 'package:candle_stick_with_painter_custom/model/data_candle_stickers_model.dart';
import 'package:flutter/material.dart';

class GraphicPainter extends CustomPainter {
  List<DataCandleStickersModel> listCandle;

  GraphicPainter({required this.listCandle});

  Color _getColorCandle(DataCandleStickersModel candle) {
    if (candle.openValue > candle.closeValue) {
      return AppColors.red;
    } else if (candle.closeValue > candle.openValue) {
      return AppColors.green;
    } else {
      return AppColors.outlines;
    }
  }

  void _drawBackgroundGraphic(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.backgroundSecondary
      ..style = PaintingStyle.fill;

    Rect rect = Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));

    canvas.drawRect(rect, paint);
  }

  void _drawOutlineGraphic(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.outlines
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Rect rect = Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));

    canvas.drawRect(rect, paint);
  }

  void _drawHorizontalLines(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.outlines
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    for (int i = 0; i < 8; i++) {
      double heightLine = size.height / 8 * i;
      canvas.drawLine(Offset(0, heightLine), Offset(size.width, heightLine), paint);
    }
  }

  void _drawCandleShadow(Canvas canvas, Size size, List<DataCandleStickersModel> listDataCandleStickersModel) {
    double maxValue = listDataCandleStickersModel[0].maxValue;
    double minValue = listDataCandleStickersModel[0].minValue;

    for (var candle in listDataCandleStickersModel) {
      if (candle.maxValue > maxValue) {
        maxValue = candle.maxValue;
      }
      if (candle.minValue < minValue) {
        minValue = candle.minValue;
      }
    }

    for (int i = 1; i < listDataCandleStickersModel.length + 1; i++) {
      double proportion = size.height / (maxValue - minValue);
      final paint = Paint()..color = _getColorCandle(listDataCandleStickersModel[i]).withOpacity(0.5);
      double widthCandle = size.width / 8 * i;
      // Rect candleRect = Rect.fromLTWH(widthCandle, size.height / 2, 3, 20);
      canvas.drawLine(Offset(widthCandle, proportion * (listDataCandleStickersModel[i].maxValue - minValue)),
          Offset(widthCandle, (proportion * (listDataCandleStickersModel[i].minValue - minValue))), paint);
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawBackgroundGraphic(canvas, size);
    _drawOutlineGraphic(canvas, size);
    _drawHorizontalLines(canvas, size);
    _drawCandleShadow(canvas, size, listCandle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
