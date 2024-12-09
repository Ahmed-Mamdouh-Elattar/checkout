import 'package:checkout/core/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class TextKeyAndValue extends StatelessWidget {
  const TextKeyAndValue({
    super.key,
    required this.text,
    required this.value,
    this.keyStyle = AppTextStyles.textStyleRegular18,
    this.valueStyle = AppTextStyles.textStyleRegular18,
  });
  final String text, value;
  final TextStyle keyStyle;
  final TextStyle valueStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: keyStyle,
        ),
        const Spacer(),
        Text(
          value,
          style: valueStyle,
        ),
      ],
    );
  }
}
