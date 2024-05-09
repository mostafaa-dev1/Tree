import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/form_fieled.dart';
import '../../core/themes/text.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

bool clicked = false;

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Checkout',
          style: TextStyle(
              fontFamily: 'font1', fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Shipping Address',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'font2',
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          IconBroken.Location,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'font2',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'Egypt, Cairo',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'font3',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.mainColor,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'Change',
                                style: TextStyle(
                                    fontSize: 13, color: AppColors.mainColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    Text(
                      'Invoice',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'font2',
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order id',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'font3')),
                        Text('#200114',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'font3')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Items',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'font3')),
                        Text('\$200.00',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'font')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shipping',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            )),
                        Text('\$50.00',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'font')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.1,
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'font2')),
                        Text('\$250.00',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'font2')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(7),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(-5, 5))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: const Center(
                  child: Text('GreeTopia',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'font1')),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promotional code',
                      style: Styles.style18,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Use promotional code to get discounts',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'font3',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextForm(
                            width: MediaQuery.sizeOf(context).width / 1.7,
                            labelText: 'code',
                            controller: TextEditingController()),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          text: 'Apply',
                          width: 100,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                clicked = !clicked;
                              });
                            },
                            icon: Icon(
                              clicked
                                  ? Icons.check_circle
                                  : Icons.circle_outlined,
                              color:
                                  clicked ? AppColors.mainColor : Colors.black,
                              size: 27,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cash on Delivery',
                              style: Styles.style18,
                            ),
                            const Text(
                              'Pay by cash on delivery',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'font3',
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: MediaQuery.sizeOf(context).width / 7,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Or pay with',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'font3',
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.sizeOf(context).width / 7,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10)),
                            child: SvgPicture.asset(
                              height: 70,
                              'lib/assets/images/svg/paypal.svg',
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10)),
                            child: SvgPicture.asset(
                              height: 70,
                              'lib/assets/images/svg/card.svg',
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
