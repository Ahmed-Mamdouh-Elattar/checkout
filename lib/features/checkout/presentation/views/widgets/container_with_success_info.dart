import 'package:checkout/core/config/app_text_styles.dart';

import 'package:checkout/features/checkout/presentation/views/widgets/master_credit_card.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/text_key_and_value.dart';
import 'package:flutter/material.dart';

class ContainerWithSuccessInfo extends StatelessWidget {
  const ContainerWithSuccessInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.62 - 80,
              child: const Column(
                children: [
                  Text(
                    'Thank you!',
                    style: AppTextStyles.textStyleMedium25,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Your transaction was successful',
                      style: AppTextStyles.textStyleRegular20,
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 42,
                    ),
                  ),
                  TextKeyAndValue(
                    text: "Date",
                    value: '01/24/2023',
                    keyStyle: AppTextStyles.textStyleRegular18,
                    valueStyle: AppTextStyles.textStyleSemiBold18,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextKeyAndValue(
                    text: "Time",
                    value: '10:15 AM',
                    keyStyle: AppTextStyles.textStyleRegular18,
                    valueStyle: AppTextStyles.textStyleSemiBold18,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextKeyAndValue(
                    text: "To",
                    value: 'Sam Louis',
                    keyStyle: AppTextStyles.textStyleRegular18,
                    valueStyle: AppTextStyles.textStyleSemiBold18,
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextKeyAndValue(
                    text: "Total",
                    value: r'$50.97',
                    keyStyle: AppTextStyles.textStyleSemiBold24,
                    valueStyle: AppTextStyles.textStyleSemiBold24,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MasterCreditCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
