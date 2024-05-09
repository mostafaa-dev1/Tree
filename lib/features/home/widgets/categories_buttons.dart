import 'package:clothing/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CategoriesButton extends StatelessWidget {
  CategoriesButton({super.key});

  final List<String> itemButton = ['All', 'Jackets', 'Dresses'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: index == 0 ? AppColors.mainColor : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey[300]!, width: 1)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    itemButton[index],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: index == 0 ? Colors.white : Colors.black),
                  )),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 3),
    );
  }
}
