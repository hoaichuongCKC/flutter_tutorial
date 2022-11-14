import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/detail_clothing/components/appbar_detail.dart';
import 'package:flutter_tutorial/pages/detail_clothing/components/causorel_clothing.dart';
import 'package:flutter_tutorial/pages/detail_clothing/components/detail_information.dart';

class DetailClothingPage extends StatelessWidget {
  const DetailClothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdfe6e9),
      body: Stack(
        fit: StackFit.passthrough,
        children: const [
          CarouselClothing(),
          AppbarDetailClothing(),
          DetailInformation(),
        ],
      ),
    );
  }
}
