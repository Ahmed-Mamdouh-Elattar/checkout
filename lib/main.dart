import 'package:checkout/core/config/app_theme.dart';
import 'package:checkout/features/checkout/presentation/views/my_cart_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const CheckoutTraining(), // Wrap your app
    ),
  );
}

class CheckoutTraining extends StatelessWidget {
  const CheckoutTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const MyCartView(),
    );
  }
}
