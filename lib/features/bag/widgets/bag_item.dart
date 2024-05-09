import 'package:clothing/core/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

class BagItem extends StatefulWidget {
  const BagItem({super.key});

  @override
  State<BagItem> createState() => _BagItemState();
}

int initialValue = 1;

class _BagItemState extends State<BagItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Expanded(
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage(
                                'lib/assets/images/products/man2.png'),
                            width: 130,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  color: Colors.grey[200]!,
                                                  blurRadius: 7,
                                                  spreadRadius: 1,
                                                  offset: const Offset(0, 3))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(50)),
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
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent)),
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
                              '\$220.00',
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
          itemCount: 1),
    );
  }
}
