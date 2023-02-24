import 'package:candle_stick_with_painter_custom/helpers/colors.dart';
import 'package:flutter/material.dart';

class ButtonSetTimerWidget extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const ButtonSetTimerWidget({required this.label, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 64,
        height: 32,
        decoration: BoxDecoration(color: AppColors.backgroundSecondary, borderRadius: BorderRadius.circular(8)),
        child: Listener(
          onPointerDown: (_) {},
          child: Center(child: Text(label, style: const TextStyle(color: AppColors.monoWhite))),
        ));
  }
}
