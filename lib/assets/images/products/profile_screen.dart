import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../../core/themes/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> text = [
    'My profile',
    'Settings',
    'Help center',
    'Privacy Policy',
    'Invite friends',
    'Logout'
  ];
  List<IconData> icons = [
    IconBroken.Profile,
    IconBroken.Setting,
    IconBroken.Danger,
    IconBroken.Close_Square,
    IconBroken.AddUser,
    IconBroken.Logout,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'font1', fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: AppColors.mainColor,
                      child: Container(
                          width: 100,
                          height: 100,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: const Image(
                              fit: BoxFit.fill,
                              height: 110,
                              image: AssetImage('lib/assets/images/me1.jpg'))),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.mainColor,
                      child: Container(
                        height: 35,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              IconBroken.Edit,
                              color: AppColors.mainColor,
                              size: 20,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Mostafa Mahmoud',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'font3',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 7,
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.cube_box_fill,
                        color: AppColors.mainColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My orders',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'font2'),
                          ),
                          Text(
                            'You have 5 active orders',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'font3'),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.mainColor,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300]!,
                              blurRadius: 7,
                              spreadRadius: 1)
                        ]),
                    child: ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return item(text[index], icons[index]);
                        },
                        separatorBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.sizeOf(context).width / 1.1,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                        itemCount: text.length))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget item(texts, icons) => GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icons,
                color: AppColors.mainColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                texts,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'font3'),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.mainColor,
              )
            ],
          )
        ],
      ),
    );
