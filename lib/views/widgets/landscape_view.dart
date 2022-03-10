import 'package:flutter/material.dart';
import 'package:task_chapter_2/config/dimens/dimens.dart';
import 'package:task_chapter_2/views/widgets/list_item_info.dart';
import 'package:task_chapter_2/views/widgets/title_widget.dart';
import '../../config/extensions/context_ext.dart';

class LandscapeView extends StatelessWidget {
  final double appWidth;
  final double appHeight;

  const LandscapeView({
    Key? key,
    required this.appWidth,
    required this.appHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleWidget(
          isPotrait: false,
          appWidth: appWidth,
          appHeight: appHeight,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: Dimens.marginPadding),
              child: Column(
                children: [
                  ListItemInfo(
                    title: 'Kasus Aktif',
                    total: '5,457,775',
                    increament: '49,447',
                    textColor: const Color(0xFF935412),
                    backgroundColor: const Color(0xFFFFDCC4),
                    isPotrait: false,
                    appWidth: appWidth,
                    appHeight: appHeight,
                  ),
                  const SizedBox(height: Dimens.marginPadding),
                  ListItemInfo(
                    title: 'Sembuh',
                    total: '4,736,234',
                    increament: '61,361',
                    textColor: const Color(0xFF046E3A),
                    backgroundColor: const Color(0xFF97F5B7),
                    isPotrait: false,
                    appWidth: appWidth,
                    appHeight: appHeight,
                  ),
                  const SizedBox(height: Dimens.marginPadding),
                  ListItemInfo(
                    title: 'Meninggal',
                    total: '147,586',
                    increament: '244',
                    textColor: const Color(0xFFBF0301),
                    backgroundColor: const Color(0xFFFFDAD3),
                    isPotrait: false,
                    appWidth: appWidth,
                    appHeight: appHeight,
                  ),
                  const SizedBox(height: Dimens.marginPadding),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Dimens.marginPadding),
                    child: Text(
                      'Note: Data harian COVID-19 biasanya update pada pukul sekitar 17:00 WIB',
                      textScaleFactor: context.media.textScaleFactor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
