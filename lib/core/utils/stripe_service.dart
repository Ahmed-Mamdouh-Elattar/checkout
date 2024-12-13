import 'package:checkout/core/utils/api_keys.dart';
import 'package:checkout/core/utils/api_service.dart';
import 'package:checkout/features/checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel paymentIntentInput}) async {
    Response response = await ApiService().post(
        body: paymentIntentInput.toJson(),
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.stripeSecretKey,
        contentType: Headers.formUrlEncodedContentType);
    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<EphemeralKeyModel> createEphemeralKey({required String id}) async {
    Response response = await ApiService().post(
        body: {
          "customer": id,
        },
        url: "https://api.stripe.com/v1/ephemeral_keys",
        token: ApiKeys.stripeSecretKey,
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          "Stripe-Version": "2024-11-20.acacia",
          "Authorization": "Bearer ${ApiKeys.stripeSecretKey}",
        });

    EphemeralKeyModel ephemeralKeyModel =
        EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }

  Future<void> initPaymentSheet({
    required PaymentIntentModel paymentIntentModel,
    required String id,
    required EphemeralKeyModel ephemeralKeyModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Flutter Stripe Store Demo',
        paymentIntentClientSecret: paymentIntentModel.clientSecret,
        customerId: id,
        customerEphemeralKeySecret: ephemeralKeyModel.secret,
      ),
    );
  }

  Future presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInput: paymentIntentInputModel);
    EphemeralKeyModel ephemeralKeyModel =
        await createEphemeralKey(id: "cus_RNVJlLb9uwJ5DF");
    await initPaymentSheet(
      paymentIntentModel: paymentIntentModel,
      ephemeralKeyModel: ephemeralKeyModel,
      id: "cus_RNVJlLb9uwJ5DF",
    );
    await presentPaymentSheet();
  }
}
