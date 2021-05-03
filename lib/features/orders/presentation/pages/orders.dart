import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/custom_header.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/delivery_location.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/product_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(),
        DeliveryLocation(location: 'Jr Arica S/N'),
        Divider(color: kColorGrey, height: 1),
        Expanded(child: ProductList()),
      ],
    );
  }
}
