part of 'checkout_cubit.dart';

sealed class CheckoutState {}

final class CheckoutInitial extends CheckoutState {}

final class CheckoutLoading extends CheckoutState {}

final class CheckoutFailure extends CheckoutState {
  final String errMessage;

  CheckoutFailure({required this.errMessage});
}

final class CheckoutSuccess extends CheckoutState {}
