import 'package:checkout/core/config/app_theme.dart';
import 'package:checkout/core/utils/api_keys.dart';
import 'package:checkout/features/checkout/presentation/views/my_cart_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.stripePublisableKey;
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
