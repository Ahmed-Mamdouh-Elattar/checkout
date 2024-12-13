// import 'package:checkout/features/checkout/presentation/views/widgets/choose_payment_method.dart';
// import 'package:checkout/features/checkout/presentation/views/widgets/custom_button.dart';
// import 'package:checkout/features/checkout/presentation/views/widgets/custom_credit_card.dart';
// import 'package:flutter/material.dart';

// class PaymentDetailsViewBody extends StatefulWidget {
//   const PaymentDetailsViewBody({super.key});

//   @override
//   State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
// }

// class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
//   GlobalKey<FormState> formKey = GlobalKey();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: CustomScrollView(
//         slivers: [
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 25,
//             ),
//           ),
//           const SliverToBoxAdapter(child: ChoosePaymentMethod()),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 34,
//             ),
//           ),
//           SliverToBoxAdapter(
//               child: CustomCreditCard(
//             autovalidateMode: autovalidateMode,
//             formKey: formKey,
//           )),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 25,
//             ),
//           ),
//           SliverFillRemaining(
//             hasScrollBody: false,
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   CustomButton(
//                     text: "Pay",
//                     onPressed: () {},
//                   ),
//                   const SizedBox(
//                     height: 12,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
