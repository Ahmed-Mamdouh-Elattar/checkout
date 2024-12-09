import 'package:checkout/core/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 70,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color(0xff34A853),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.textStyleMedium22,
      ),
    );
  }
}
