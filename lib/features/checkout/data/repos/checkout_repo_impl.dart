import 'package:checkout/core/errors/failures.dart';
import 'package:checkout/core/utils/stripe_service.dart';
import 'package:checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  @override
  Future<Either<Failures, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    StripeService stripeService = StripeService();
    try {
      await stripeService.makePayment(paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
