import 'package:clothing/features/home/widgets/banners.dart';
import 'package:clothing/features/home/widgets/categories.dart';
import 'package:clothing/features/home/widgets/categories_buttons.dart';
import 'package:clothing/features/home/widgets/products.dart';

import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var searchController = TextEditingController();

int? currentIndex;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tree',
          style: TextStyle(
              fontFamily: 'font1',
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                IconBroken.Notification,
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
              Banners(),
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
              Categories(),
              const SizedBox(
                height: 40,
              ),
              CategoriesButton(),
              const SizedBox(
                height: 20,
              ),
              Products()
            ],
          ),
        ),
      ),
    );
  }
}
