import 'package:checkout/core/config/app_theme.dart';
import 'package:checkout/features/checkout/presentation/views/my_cart_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const CheckoutTraining(),
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
