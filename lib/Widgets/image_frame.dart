import 'package:flutter/material.dart';

class ImageFrame extends StatelessWidget {
  final String imageUrl;

  const ImageFrame({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
