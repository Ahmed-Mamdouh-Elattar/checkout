class PaymentIntentInputModel {
  final int amount;
  final String currency;
  final String id;

  const PaymentIntentInputModel(this.id,
      {required this.amount, required this.currency});
  Map<String, dynamic> toJson() {
    return {
      "customer": id,
      "amount": amount,
      "currency": currency,
    };
  }
}
