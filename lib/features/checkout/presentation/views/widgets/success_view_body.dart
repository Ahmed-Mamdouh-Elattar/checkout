import 'package:checkout/core/config/app_text_styles.dart';
import 'package:checkout/core/config/assets.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/check_icon.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/container_with_success_info.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/dashed_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const ContainerWithSuccessInfo(),
              Positioned(
                top: MediaQuery.sizeOf(context).height * 0.62,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * 0.62,
                right: 0,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              const CheckIcon(),
              Positioned(
                right: 45,
                left: 45,
                top: MediaQuery.sizeOf(context).height * 0.62 + 20,
                child: const DashedDivider(
                  color: Colors.grey,
                ),
              ),
              Positioned.fill(
                top: MediaQuery.sizeOf(context).height * 0.62 + 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesBarcode,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xff34A853),
                          ),
                        ),
                        child: Text(
                          "PAID",
                          style: AppTextStyles.textStyleSemiBold24.copyWith(
                            color: const Color(0xff34A853),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
