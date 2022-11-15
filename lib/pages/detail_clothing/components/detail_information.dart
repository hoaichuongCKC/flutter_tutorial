import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/stateless/button.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/pages/detail_clothing/components/causorel_clothing.dart';
import 'package:flutter_tutorial/theme/color.dart';
import 'package:flutter_tutorial/theme/icon.dart';

class DetailInformation extends StatelessWidget {
  const DetailInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              color: MainColor.instance.greyColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: SizedBox(
              height: 80.0,
              width: 220.0,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                itemCount: clothingDetail.listImage.length,
                separatorBuilder: (context, index) =>
                    index == clothingDetail.listImage.length - 1
                        ? const SizedBox()
                        : const SizedBox(width: 10.0),
                itemBuilder: (context, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: MainColor.instance.lightColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: SizedBox(
                      width: 60.0,
                      height: 50.0,
                      child: Image.asset(
                        clothingDetail.listImage[index].image_url,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 5.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: MainColor.instance.lightColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          informationProduct(context),
        ],
      ),
    );
  }

  Widget informationProduct(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: MainColor.instance.lightColor.withOpacity(0.7),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.28,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: clothingDetail.name,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: MainColor.instance.darkColor,
                ),
                const Spacer(),
                TextWidget(
                  text: clothingDetail.price,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: MainColor.instance.darkColor,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 57.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          border:
                              Border.all(color: MainColor.instance.greyColor),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Size',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                              color: MainColor.instance.greyColor,
                            ),
                            TextWidget(
                              text: 'Large',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: MainColor.instance.darkColor,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 57.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          border:
                              Border.all(color: MainColor.instance.greyColor),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Color',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                              color: MainColor.instance.greyColor,
                            ),
                            const SizedBox(height: 5.0),
                            Container(
                              height: 5.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                color: MainColor.instance.darkColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 57.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            border:
                                Border.all(color: MainColor.instance.greyColor),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 20.0,
                                color: MainColor.instance.darkColor,
                              ),
                              const SizedBox(width: 10),
                              TextWidget(
                                text: '1',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: MainColor.instance.darkColor,
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.add,
                                size: 20.0,
                                color: MainColor.instance.darkColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: double.maxFinite,
                          height: 57.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            border:
                                Border.all(color: MainColor.instance.greyColor),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextWidget(
                                text: 'Composition',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: MainColor.instance.greyColor,
                              ),
                              TextWidget(
                                text: 'Silk Bambo',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: MainColor.instance.darkColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  ButtonWidget(
                    widthButton: 70.0,
                    heightButton: double.maxFinite,
                    onClick: () {},
                    backgroundColor: MainColor.instance.blueColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MainIcon.instance.addRectangle,
                        const SizedBox(height: 10.0),
                        TextWidget(
                          text: 'Add',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: MainColor.instance.lightColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
