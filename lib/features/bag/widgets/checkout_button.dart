import 'package:clothing/core/themes/colors.dart';
import 'package:clothing/core/themes/text.dart';
import 'package:clothing/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey[200]!,
              blurRadius: 7,
              spreadRadius: 1,
              offset: Offset(0, 3))
        ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: Styles.style20,
                  ),
                  Text(
                    '\$220.00',
                    style: TextStyle(
                        fontFamily: 'font',
                        color: AppColors.mainColor,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Checkout',
              width: 150,
              color: AppColors.mainColor,
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(5),
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: const Text(
          'The total dosn\'t contain shipping price',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      )
    ]);
  }
}
