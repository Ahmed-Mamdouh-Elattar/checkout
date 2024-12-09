import 'package:checkout/features/checkout/presentation/views/widgets/choose_payment_method.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChoosePaymentMethodBottomSheet extends StatelessWidget {
  const ChoosePaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ChoosePaymentMethod(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: "Continue",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
