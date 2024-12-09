import 'package:checkout/core/config/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChoosePaymentMethod extends StatefulWidget {
  const ChoosePaymentMethod({super.key});

  @override
  State<ChoosePaymentMethod> createState() => _ChoosePaymentMethodState();
}

class _ChoosePaymentMethodState extends State<ChoosePaymentMethod> {
  final List<String> paymentMethod = const [
    Assets.imagesCreditCard,
    Assets.imagesPaypal,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PaymentMethod(
          image: paymentMethod[0],
          isActive: index == 0,
          onTap: () {
            setState(() {
              index = 0;
            });
          },
        ),
        PaymentMethod(
          image: paymentMethod[1],
          isActive: index == 1,
          onTap: () {
            setState(() {
              index = 1;
            });
          },
        ),
      ],
    );
  }
}

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key, required this.image, this.isActive = false, this.onTap});
  final String image;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        width: 95,
        child: Card(
          elevation: isActive ? 5 : 0,
          color: Colors.white,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              width: 1.3,
              color:
                  isActive ? const Color(0xff34A853) : const Color(0xffD9D9D9),
            ),
          ),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
      ),
    );
  }
}
