import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

import 'checkout_screen.dart';
import 'core/themes/colors.dart';
import 'constants/text.dart';

class ItemInfoScreen extends StatefulWidget {
  const ItemInfoScreen({super.key, required this.image});
  final List<String> image;
  @override
  State<ItemInfoScreen> createState() => _ItemInfoScreenState();
}

List<String> sizes = [
  'S',
  'M',
  'L',
  'XL',
  'XXL',
];

List<String> images = [
  'lib/assets/images/image1.png',
  'lib/assets/images/image2.png',
  'lib/assets/images/image2.png',
  'lib/assets/images/image1.png',
];

int? sizeIndex;
int? initialValue = 1;

class _ItemInfoScreenState extends State<ItemInfoScreen> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
                child: Stack(
                  alignment: Alignment.topCenter,
                  fit: StackFit.expand,
                  children: [
                    Image(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.image[currentIndex]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200]!,
                                          blurRadius: 7,
                                          spreadRadius: 1,
                                          offset: Offset(0, 4))
                                    ]),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      IconBroken.Arrow___Left,
                                      color: Colors.black,
                                    )),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200]!,
                                          blurRadius: 7,
                                          spreadRadius: 1,
                                          offset: Offset(0, 4))
                                    ]),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.heart,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                              height: 80,
                              width: MediaQuery.sizeOf(context).width / 1.5,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Image(
                                            width: 60,
                                            height: 53,
                                            fit: BoxFit.fill,
                                            image:
                                                AssetImage(widget.image[index]),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 2,
                                            width: 60,
                                            color: currentIndex == index
                                                ? AppColors.mainColor
                                                : Colors.grey[100],
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        width: 5,
                                      ),
                                  itemCount: widget.image.length)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 7,
                          spreadRadius: 1,
                          offset: Offset(4, -4))
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Brown Jacket',
                            style: Styles.style20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '4.5',
                                style: Styles.style20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '\$110,00',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'font2',
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'jacket is a garment for the upper body, usually extending below the hips.'
                        ' A jacket typically has sleeves and fastens in the front or slightly on the side. '
                        'A jacket is generally lighter, tighter-fitting, and less insulating than a coat, which is outerwear.',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'font3',
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Size',
                        style: Styles.style18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 45,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    sizeIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: index == sizeIndex
                                          ? AppColors.mainColor
                                          : Colors.white,
                                      border: Border.all(
                                          color: index == sizeIndex
                                              ? AppColors.mainColor
                                              : Colors.black)),
                                  child: Text(sizes[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: index == sizeIndex
                                              ? Colors.white
                                              : Colors.black)),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                            itemCount: sizes.length),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[200]!,
                                      blurRadius: 7,
                                      spreadRadius: 1,
                                      offset: Offset(0, 4))
                                ],
                                borderRadius: BorderRadius.circular(50)),
                            child: StepperSwipe(
                                iconsColor: Colors.black,
                                speedTransitionLimitCount: 3,
                                initialValue: 1,
                                firstIncrementDuration:
                                    Duration(milliseconds: 250),
                                secondIncrementDuration:
                                    Duration(milliseconds: 100),
                                maxValue: 10,
                                minValue: 1,
                                dragButtonColor: AppColors.mainColor,
                                onChanged: (v) {
                                  setState(() {
                                    initialValue = v;
                                  });
                                },
                                stepperValue: initialValue!),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CheckoutScreen(),
                                      ));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      '\$${110.00 * initialValue!}',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Buy now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
