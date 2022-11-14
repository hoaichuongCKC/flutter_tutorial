import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/models/image_clothing.dart';
import 'package:flutter_tutorial/theme/icon.dart';

ClothingModel clothingDetail = const ClothingModel(
    name: 'PITTI Block - Jacket',
    price: '\$112.99',
    listImage: [
      ImageClothing(
        image_url: 'assets/detail_clothing/ao.png',
      ),
      ImageClothing(
        image_url: 'assets/detail_clothing/main.png',
      ),
      ImageClothing(
        image_url: 'assets/detail_clothing/quan.png',
      ),
    ]);

class CarouselClothing extends StatefulWidget {
  const CarouselClothing({super.key});

  @override
  State<CarouselClothing> createState() => _CarouselClothingState();
}

class _CarouselClothingState extends State<CarouselClothing> {
  late PageController pageController;
  ValueNotifier<bool> isIncrement = ValueNotifier(false);
  ValueNotifier<double> currentPage = ValueNotifier(1.0);
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage.value.toInt());
    pageController.addListener(
      () {
        if (pageController.page! > currentPage.value) {
          isIncrement.value = true;
        } else if (pageController.page! < currentPage.value) {
          isIncrement.value = false;
        }
        currentPage.value = pageController.page!;
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    isIncrement.dispose();
    currentPage.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.maxFinite,
      height: size.height / 1.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: clothingDetail.listImage.length,
              itemBuilder: (context, index) {
                final data = clothingDetail.listImage[index];
                return ValueListenableBuilder(
                  valueListenable: currentPage,
                  builder: (context, double valuePage, child) {
                    return ValueListenableBuilder(
                      valueListenable: isIncrement,
                      builder: (context, bool value, child) {
                        return AnimatedOpacity(
                          opacity: getOpacity(value, valuePage),
                          duration: const Duration(milliseconds: 500),
                          child: Image.asset(
                            data.image_url,
                            fit: BoxFit.scaleDown,
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linearToEaseOut,
                ),
                child: MainIcon.instance.leftArrowDirection,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () => pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linearToEaseOut,
                      ),
                  child: MainIcon.instance.rightArrowDirection),
            )
          ],
        ),
      ),
    );
  }

  double getOpacity(bool value, double valuePage) {
    double opacity = double.parse(valuePage.toStringAsFixed(2));
    double currenOffset = 1.0;
    if (opacity >= 1.0) {
      if (value && opacity > 1.0) {
        opacity = (opacity - currenOffset).abs();
      } else {
        opacity = currenOffset - ((currenOffset - opacity).abs());
      }
    } else {
      if (!value) {
        opacity = (currenOffset - opacity).abs();
      }
    }
    return opacity;
  }
}
