import 'package:clothing/core/data/data.dart';
import 'package:clothing/core/themes/text.dart';
import 'package:clothing/features/item_info/item_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var data = Data();
    return GridView.builder(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width > 600 ? 3 : 2,
          mainAxisSpacing: 10,
          childAspectRatio: width > 600 ? 0.80 : 0.70,
          crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        return item(width, data.images[index], context, index, data.collection);
      },
      itemCount: data.images.length,
    );
  }
}

Widget item(width, image, context, index, collection) => GestureDetector(
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
