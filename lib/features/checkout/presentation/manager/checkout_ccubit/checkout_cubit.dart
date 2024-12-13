import 'dart:developer';

import 'package:checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());

  void makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var checkout = await CheckoutRepoImpl()
        .makePayment(paymentIntentInputModel: paymentIntentInputModel);
    checkout.fold(
      (l) => emit(CheckoutFailure(errMessage: l.errMessage)),
      (success) => emit(
        CheckoutSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<CheckoutState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
