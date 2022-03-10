import 'package:flutter/material.dart';
import 'package:task_chapter_2/config/dimens/dimens.dart';
import '../../config/extensions/context_ext.dart';

class ListItemInfo extends StatelessWidget {
  final String title;
  final String total;
  final String increament;
  final Color textColor;
  final Color backgroundColor;
  final bool isPotrait;
  final double appWidth;
  final double appHeight;

  const ListItemInfo({
    Key? key,
    required this.title,
    required this.total,
    required this.increament,
    required this.textColor,
    required this.backgroundColor,
    required this.isPotrait,
    required this.appWidth,
    required this.appHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Dimens.marginPadding),
      padding: const EdgeInsets.all(Dimens.marginPadding),
      width: double.infinity,
      height: isPotrait ? null : 150,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(Dimens.radiusSmall),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            total,
            style: TextStyle(
              color: textColor,
              fontSize: Dimens.fontSizeHeading * context.media.textScaleFactor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                increament,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const SizedBox(height: 4),
              Icon(
                Icons.arrow_upward,
                color: textColor,
                size: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
