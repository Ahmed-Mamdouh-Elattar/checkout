// import 'package:checkout/core/config/assets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

// class CustomCreditCard extends StatefulWidget {
//   const CustomCreditCard(
//       {super.key, required this.formKey, required this.autovalidateMode});
//   final GlobalKey<FormState> formKey;
//   final AutovalidateMode autovalidateMode;
//   @override
//   State<CustomCreditCard> createState() => _CustomCreditCardState();
// }

// class _CustomCreditCardState extends State<CustomCreditCard> {
//   String cardNumber = "", expiryDate = "", cardHolderName = "", cvvCode = "";
//   bool showBackView = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CreditCardWidget(
//           padding: 0,
//           cardBgColor: Colors.white,
//           isHolderNameVisible: true,
//           backgroundImage: Assets.imagesCardFrame,
//           cardNumber: cardNumber,
//           expiryDate: expiryDate,
//           cardHolderName: cardHolderName,
//           cvvCode: cvvCode,
//           showBackView: showBackView,
//           onCreditCardWidgetChange: (creditCardBrand) {},
//         ),
//         CreditCardForm(
//             autovalidateMode: widget.autovalidateMode,
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             onCreditCardModelChange: (creditCardModel) {
//               setState(() {
//                 cardNumber = creditCardModel.cardNumber;
//                 expiryDate = creditCardModel.expiryDate;
//                 cardHolderName = creditCardModel.cardHolderName;
//                 cvvCode = creditCardModel.cvvCode;
//                 showBackView = creditCardModel.isCvvFocused;
//               });
//             },
//             formKey: widget.formKey)
//       ],
//     );
//   }
// }
