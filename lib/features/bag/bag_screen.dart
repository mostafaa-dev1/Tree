import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

import 'core/themes/colors.dart';
import 'constants/custom_button.dart';
import 'constants/text.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

int initialValue = 1;

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
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200]!,
                                blurRadius: 7,
                                spreadRadius: 1,
                                offset: const Offset(0, 3))
                          ],
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'lib/assets/images/image4.png'),
                                  width: 150,
                                  height: 110,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Brown Jacket',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'font2'),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Size: ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey[400],
                                                  fontFamily: 'font3'),
                                            ),
                                            Text(
                                              'L',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey[400],
                                                  fontFamily: 'font3'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Color: ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey[400],
                                                  fontFamily: 'font3'),
                                            ),
                                            Text(
                                              'Black',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey[400],
                                                  fontFamily: 'font3'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$110.00',
                                              style: TextStyle(
                                                  color: AppColors.mainColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'font3'),
                                            ),
                                            Container(
                                              height: 40,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color:
                                                            Colors.grey[200]!,
                                                        blurRadius: 7,
                                                        spreadRadius: 1,
                                                        offset:
                                                            const Offset(0, 3))
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: StepperSwipe(
                                                  iconsColor: Colors.black,
                                                  speedTransitionLimitCount: 3,
                                                  initialValue: 1,
                                                  firstIncrementDuration:
                                                      const Duration(
                                                          milliseconds: 250),
                                                  secondIncrementDuration:
                                                      const Duration(
                                                          milliseconds: 100),
                                                  maxValue: 10,
                                                  minValue: 1,
                                                  dragButtonColor:
                                                      AppColors.mainColor,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      initialValue = v;
                                                    });
                                                  },
                                                  stepperValue: initialValue!),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width / 1.1,
                            height: 1,
                            color: Colors.grey[200],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconBroken.Delete,
                                  size: 20,
                                ),
                                style: const ButtonStyle(
                                    overlayColor: MaterialStatePropertyAll(
                                        Colors.transparent)),
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.grey[200],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Total: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontFamily: 'font3',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '\$210.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: AppColors.mainColor,
                                        fontFamily: 'font3'),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: 2),
          ),
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
                        '\$250.00',
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
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
