import 'package:flutter/material.dart';
import 'package:task_chapter_2/views/widgets/landscape_view.dart';
import 'package:task_chapter_2/views/widgets/potrait_view.dart';
import '../../config/extensions/context_ext.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final double appWidth = context.media.size.width;
    final double appHeight =
        (context.media.size.height - context.media.padding.top);
    return Scaffold(
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 480) {
              return LandscapeView(appWidth: appWidth, appHeight: appHeight);
            } else {
              return PotraitView(appWidth: appWidth, appHeight: appHeight);
            }
          },
        ),
      ),
    );
  }
}
