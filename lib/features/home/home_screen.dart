import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:line_icons/line_icon.dart';

import 'package:line_icons/line_icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'core/themes/colors.dart';
import 'constants/custom_button.dart';
import 'constants/text.dart';
import 'item_info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var searchController = TextEditingController();
List<String> images = [
  'lib/assets/images/image41.jpg',
  'lib/assets/images/image61.jpg',
  'lib/assets/images/image62.jpg',
  'lib/assets/images/image5.jpg',
  'lib/assets/images/image4.png',
];
List<List<String>> collection = [
  [
    'lib/assets/images/image41.jpg',
    'lib/assets/images/image4.png',
    'lib/assets/images/img.png',
  ],
  [
    'lib/assets/images/image61.jpg',
    'lib/assets/images/image62.jpg',
  ],
  [
    'lib/assets/images/image61.jpg',
    'lib/assets/images/image62.jpg',
  ],
  [
    'lib/assets/images/image5.jpg',
  ],
  [
    'lib/assets/images/image4.png',
    'lib/assets/images/image41.jpg',
    'lib/assets/images/img.png',
  ],
];
List<String> itemButton = ['All', 'Jackets', 'Dresses'];
int? currentIndex;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GreeTopia',
          style: TextStyle(
              fontFamily: 'font1',
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                size: 27,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width - 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Search',
                          labelStyle: TextStyle(
                            fontFamily: 'font3',
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.grey[400]!, width: 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconBroken.Filter,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 230,
                child: Swiper(
                    outer: true,
                    autoplay: true,
                    loop: true,
                    indicatorLayout: PageIndicatorLayout.COLOR,
                    autoplayDisableOnInteraction: true,
                    pagination: SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                          color: Colors.grey[200],
                          activeColor: AppColors.mainColor,
                          size: 10,
                          activeSize: 12,
                        )),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 10, right: 10),
                        child: header(),
                      );
                    },
                    itemCount: 3),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: Styles.style25,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return category();
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 10),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return button(itemButton[index], index);
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width > 600 ? 3 : 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: width > 600 ? 0.80 : 0.70,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return item(width, images[index], context, index);
                },
                itemCount: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget category() => Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.mainColor.withOpacity(.1),
          ),
          child: Icon(
            Icons.category,
            color: AppColors.mainColor,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'T-shirt',
          style: Styles.style15,
        )
      ],
    );
Widget button(button, index) => Container(
      decoration: BoxDecoration(
          color: index == 0 ? AppColors.mainColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey[300]!, width: 1)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            button,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: index == 0 ? Colors.white : Colors.black),
          )),
    );
Widget item(width, image, context, index) => GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemInfoScreen(
                image: collection[index],
              ),
            ));
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            width: width > 500 ? width / 3 - 25 : width / 2 - 25,
            height: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 7,
                      spreadRadius: 1,
                      offset: const Offset(0, 5))
                ]),
            child: Column(
              children: [
                Image(
                  image: AssetImage(image),
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Brown Jacket',
                            style: TextStyle(
                              fontFamily: 'font3',
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                '\$55.00',
                                style: TextStyle(
                                  fontFamily: 'font2',
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              index == 0
                                  ? const Text(
                                      '\$110.00',
                                      style: TextStyle(
                                          fontFamily: 'font2',
                                          fontSize: 15,
                                          color: Colors.redAccent),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            '4.5',
                            style: Styles.style15,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                index == 0
                    ? Container(
                        height: 25,
                        width: 50,
                        color: Colors.redAccent[200],
                        child: const Center(
                          child: Text(
                            '-50%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    : const SizedBox(),
                Container(
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200]!.withOpacity(.5)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.suit_heart,
                        ))),
              ],
            ),
          )
        ],
      ),
    );
Widget header() => Container(
      height: 210,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 7,
                spreadRadius: 1,
                offset: const Offset(0, 5))
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('New collection',
                    style: TextStyle(
                      fontFamily: 'font',
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text('Discount 50% for the first transaction',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: 'font3',
                        fontSize: 16,
                        color: Colors.grey[500])),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'shop',
                  width: 100,
                  color: AppColors.mainColor,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Image(
              image: AssetImage('lib/assets/images/img.png'),
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
