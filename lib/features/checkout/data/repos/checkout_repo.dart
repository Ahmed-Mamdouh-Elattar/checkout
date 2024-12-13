import 'package:checkout/core/errors/failures.dart';
import 'package:checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failures, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
