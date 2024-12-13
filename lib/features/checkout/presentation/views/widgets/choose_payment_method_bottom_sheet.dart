import 'dart:developer';

import 'package:checkout/core/utils/api_keys.dart';
import 'package:checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout/features/checkout/presentation/manager/checkout_ccubit/checkout_cubit.dart';
import 'package:checkout/features/checkout/presentation/views/success_view.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/choose_payment_method.dart';
import 'package:checkout/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

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
          const CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutCubit, CheckoutState>(
      listener: (context, state) {
        if (state is CheckoutSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SuccessView();
              },
            ),
          );
        }
        if (state is CheckoutFailure) {
          SnackBar snackBar = SnackBar(
            content: Text(state.errMessage),
          );
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          text: "Continue",
          isLoading: state is CheckoutLoading,
          onPressed: () {
            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel("cus_RNVJlLb9uwJ5DF",
            //         amount: 100, currency: "usd");
            // BlocProvider.of<CheckoutCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: ApiKeys.paypalClientId,
                secretKey: ApiKeys.paypalSecretKey,
                transactions: const [
                  {
                    "amount": {
                      "total": '70',
                      "currency": "USD",
                      "details": {
                        "subtotal": '70',
                        "shipping": '0',
                        "shipping_discount": 0
                      }
                    },
                    "description": "The payment transaction description.",
                    // "payment_options": {
                    //   "allowed_payment_method":
                    //       "INSTANT_FUNDING_SOURCE"
                    // },
                    "item_list": {
                      "items": [
                        {
                          "name": "Apple",
                          "quantity": 4,
                          "price": '5',
                          "currency": "USD"
                        },
                        {
                          "name": "Pineapple",
                          "quantity": 5,
                          "price": '10',
                          "currency": "USD"
                        }
                      ],

                      // shipping address is not required though
                      //   "shipping_address": {
                      //     "recipient_name": "tharwat",
                      //     "line1": "Alexandria",
                      //     "line2": "",
                      //     "city": "Alexandria",
                      //     "country_code": "EG",
                      //     "postal_code": "21505",
                      //     "phone": "+00000000",
                      //     "state": "Alexandria"
                      //  },
                    }
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  Navigator.pop(context);
                  log("onSuccess: $params");
                },
                onError: (error) {
                  ;
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  log('cancelled:');
                },
              ),
            ));
          },
        );
      },
    );
  }
}
