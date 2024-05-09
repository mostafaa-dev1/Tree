import 'package:card_swiper/card_swiper.dart';
import 'package:clothing/core/data/data.dart';
import 'package:clothing/core/themes/colors.dart';
import 'package:clothing/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  Banners({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Data();
    return SizedBox(
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
                padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                child: Container(
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
                      Expanded(
                        child: Image(
                          image: AssetImage(data.banners[index]),
                          height: 300,
                          fit: BoxFit.fitHeight,
                        ),
                      )
                    ],
                  ),
                ));
          },
          itemCount: data.banners.length),
    );
  }
}
