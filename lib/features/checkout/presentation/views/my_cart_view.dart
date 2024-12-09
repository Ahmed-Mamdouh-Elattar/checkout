import 'package:checkout/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const MyCartViewBody(),
    );
  }
}
