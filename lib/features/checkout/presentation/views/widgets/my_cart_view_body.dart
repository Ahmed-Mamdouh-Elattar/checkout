import 'package:checkout/core/config/app_text_styles.dart';
import 'package:checkout/core/config/assets.dart';
import 'package:checkout/features/checkout/presentation/manager/checkout_ccubit/checkout_cubit.dart';

import 'package:checkout/features/checkout/presentation/views/widgets/choose_payment_method_bottom_sheet.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/text_key_and_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(child: Image.asset(Assets.imagesCart)),
          const SizedBox(
            height: 25,
          ),
          const TextKeyAndValue(
            text: "Order Subtotal",
            value: r"$49.97",
          ),
          const TextKeyAndValue(
            text: "Discount",
            value: r"$0",
          ),
          const TextKeyAndValue(
            text: "Shipping",
            value: r"$8",
          ),
          const SizedBox(
            height: 17,
          ),
          const Divider(
            height: 0,
            endIndent: 15,
            indent: 15,
            color: Color(0xffC7C7C7),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextKeyAndValue(
            text: "Total",
            value: r"$50.97",
            keyStyle: AppTextStyles.textStyleSemiBold24,
            valueStyle: AppTextStyles.textStyleSemiBold24,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            text: "Complete Payment",
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => CheckoutCubit(),
                      child: const ChoosePaymentMethodBottomSheet(),
                    );
                  });
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
