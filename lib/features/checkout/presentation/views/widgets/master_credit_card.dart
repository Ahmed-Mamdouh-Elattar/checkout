import 'package:checkout/core/config/app_text_styles.dart';
import 'package:checkout/core/config/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MasterCreditCard extends StatelessWidget {
  const MasterCreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesMasterCardLogo),
        title: const Text(
          "Credit Card",
          style: AppTextStyles.textStyleRegular18,
        ),
        subtitle: const Text(
          "Mastercard **78",
          style: AppTextStyles.textStyleRegular18,
        ),
      ),
    );
  }
}
