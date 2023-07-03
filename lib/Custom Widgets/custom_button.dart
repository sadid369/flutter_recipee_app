import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double mWidth;
  final double mHeihth;
  final Color mColor;
  final double mBorderRadius;
  final IconData? mIcon;
  final VoidCallback? onTap;
  const CustomButton({
    Key? key,
    required this.title,
    this.mWidth = 300,
    this.mHeihth = 200,
    this.mColor = Colors.blue,
    this.mBorderRadius = 21,
    this.mIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      height: mHeihth,
      child: ElevatedButton(
        onPressed: onTap,
        child: mIcon == null
            ? Text(title)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(mIcon),
                  SizedBox(
                    width: 11,
                  ),
                  Text(title),
                ],
              ),
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Constant.colors,
          backgroundColor: mColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(mBorderRadius),
          ),
        ),
      ),
    );
  }
}
