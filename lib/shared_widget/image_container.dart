import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imageAsset;

  const ImageContainer({Key? key, required this.imageAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffD62E1E),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageAsset),
          )),
      // child: AssetImage(imageAsset),
    );
  }
}
