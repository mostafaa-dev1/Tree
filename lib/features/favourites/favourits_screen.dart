import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Favorites',
            style: TextStyle(
                fontFamily: 'font1', fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ItemInfoScreen(image: collection[index],),));
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
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    children: [
                      const Image(
                        image:
                            AssetImage('lib/assets/images/products/man2.png'),
                        width: 300,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brown Jacket',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'font3',
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$110.00',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'font3',
                                          fontSize: 15),
                                    ),
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
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                      padding: const EdgeInsets.all(3),
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200]!.withOpacity(.5)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart_fill,
                            color: AppColors.mainColor,
                          ))),
                )
              ],
            ),
          ),
        ));
  }
}
