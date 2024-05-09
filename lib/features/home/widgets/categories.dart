import 'package:clothing/core/data/data.dart';
import 'package:clothing/core/themes/colors.dart';
import 'package:clothing/core/themes/text.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Data();
    return SizedBox(
      height: 120,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor.withOpacity(.1),
                  ),
                  child: Image(
                    image: AssetImage(data.Items[index]['image']),
                    height: 50,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${data.Items[index]['title']}',
                  style: Styles.style15,
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: data.Items.length),
    );
  }
}
