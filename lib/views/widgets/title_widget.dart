import 'package:flutter/material.dart';
import 'package:task_chapter_2/config/dimens/dimens.dart';
import '../../config/extensions/context_ext.dart';

class TitleWidget extends StatelessWidget {
  final bool isPotrait;
  final double appWidth;
  final double appHeight;

  const TitleWidget({
    Key? key,
    required this.isPotrait,
    required this.appWidth,
    required this.appHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.marginPadding),
      width: isPotrait ? double.infinity : appWidth / 3,
      height: isPotrait ? appHeight / 3 : appHeight,
      decoration: BoxDecoration(
        color: const Color(0xFFACC7FF),
        borderRadius: isPotrait
            ? const BorderRadius.vertical(
                bottom: Radius.circular(20),
              )
            : const BorderRadius.horizontal(
                right: Radius.circular(20),
              ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Perkembangan COVID-19 Indonesia',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF031E4D),
              fontSize:
                  (Dimens.fontSizeHeading * context.media.textScaleFactor),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Last Update: 2022-02-25 17:08:55',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF031E4D),
              fontSize:
                  (Dimens.fontSizeContent * context.media.textScaleFactor),
            ),
          ),
        ],
      ),
    );
  }
}
