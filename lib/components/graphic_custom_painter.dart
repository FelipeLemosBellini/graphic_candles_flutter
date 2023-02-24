import 'package:candle_stick_with_painter_custom/helpers/colors.dart';
import 'package:candle_stick_with_painter_custom/model/data_candle_stickers_model.dart';
import 'package:flutter/material.dart';

class GraphicPainter extends CustomPainter {
  List<DataCandleStickersModel> listCandle;

  GraphicPainter({required this.listCandle});

  void _drawBorder(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.outlines
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Rect rect = Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));
    canvas.drawRect(rect, paint);
  }

  void _drawCandle(Canvas canvas, Size size, List<DataCandleStickersModel> listDataCandleStickersModel) {
    final paint = Paint()
      ..color = AppColors.outlines
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Rect rect = Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));
    canvas.drawRect(rect, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawBorder(canvas, size);
    _drawCandle(canvas, size, listCandle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
