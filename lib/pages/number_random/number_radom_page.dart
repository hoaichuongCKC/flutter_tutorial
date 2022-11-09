import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/stateless/button.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/models/number_ramdom.dart';
import 'package:flutter_tutorial/pages/number_random/components/draw_background.dart';
import 'package:flutter_tutorial/pages/number_random/components/draw_circle_number.dart';
import 'package:flutter_tutorial/theme/color.dart';
import 'dart:math';

class NumberRandomPage extends StatelessWidget {
  const NumberRandomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),
              TextWidget(
                text: 'How to play',
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: MainColor.instance.lightColor,
                strokeColor: MainColor.instance.greyColor,
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: double.maxFinite,
                height: 300.0,
                child: CustomPaint(
                  painter: DrawBackground(),
                  child: const ImageNumberPage(),
                ),
              ),
              const SizedBox(height: 20.0),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Player 1 ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: MainColor.instance.blueColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: 'silde right ',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: MainColor.instance.greyDarkColor,
                      ),
                    ),
                    TextSpan(
                      text: 'over the number',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: MainColor.instance.greyDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Player 2 ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: MainColor.instance.purpleColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: 'silde left ',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: MainColor.instance.greyDarkColor,
                      ),
                    ),
                    TextSpan(
                      text: 'over the number',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: MainColor.instance.greyDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              ButtonWidget(
                onClick: () {},
                backgroundColor: MainColor.instance.lightColor,
                child: TextWidget(
                  text: 'OK',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: MainColor.instance.greyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageNumberPage extends StatefulWidget {
  const ImageNumberPage({super.key});

  @override
  State<ImageNumberPage> createState() => _ImageNumberPageState();
}

class _ImageNumberPageState extends State<ImageNumberPage> {
  final List<NumberRandomModel> listNumber = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initialRandom();
  }

  void initialRandom() {
    int lengthNumber = 10;
    Size size = MediaQuery.of(context).size;
    double maxTopOffset = 270;
    double maxLeftOffset = size.width * 0.8;
    Random random = Random();
    for (int i = 1; i <= lengthNumber; i++) {
      bool isCircle = false;
      int numberRandom = random.nextInt(100);
      Color colorRandom = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      int dxLeft = random.nextInt((maxLeftOffset).toInt()) + 25;
      int dyTop = random.nextInt((maxTopOffset).toInt()) + 25;
      Offset offsetRandom = Offset(dxLeft.toDouble(), dyTop.toDouble());
      if (i == 3 || i == 7) {
        isCircle = true;
      }
      listNumber.add(NumberRandomModel(
          color: colorRandom,
          number: numberRandom,
          offset: offsetRandom,
          isCircle: isCircle));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: listNumber.map((data) {
      return Positioned(
        top: data.offset.dy,
        left: data.offset.dx, //28.0 is padding horizontal double 14.0
        child: CustomPaint(
          foregroundPainter: DrawCircleNumber(
            color: data.color,
            offset: const Offset(0.0, 0.0),
            number: data.number.toString(),
            isCircle: data.isCircle,
          ),
        ),
      );
    }).toList());
  }
}
