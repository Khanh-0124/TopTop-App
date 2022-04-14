import 'package:flutter/material.dart';
import 'package:toptop_app/constants.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({
    Key? key,
    required this.iconData,
    required this.primaryColor,
    required this.accentColor,
  }) : super(key: key);

  final IconData iconData;

  final Color primaryColor;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 44,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 34,
            decoration: BoxDecoration(
              color: CustomColors.blue,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 34,
            decoration: BoxDecoration(
              color: CustomColors.pink,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: 38,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                iconData,
                color: accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
