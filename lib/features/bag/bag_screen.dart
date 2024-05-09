import 'package:clothing/features/bag/widgets/bag_item.dart';
import 'package:clothing/features/bag/widgets/checkout_button.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/themes/text.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Bag',
          style: TextStyle(
              fontFamily: 'font1', fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: const Column(
        children: [
          BagItem(),
          CheckoutButton(),
        ],
      ),
    );
  }
}
