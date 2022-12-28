import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'app_styles.dart';

class LayoutBuilderWidget extends StatelessWidget {

  final bool? isColor;
  final int sections;
  const LayoutBuilderWidget({Key? key, required this.sections, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print(
            "The Width is ${constraints.constrainWidth()}");
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / sections)
                    .floor(),
                    (index) => SizedBox(
                    width: AppLayout.getWidth(3),
                    height: AppLayout.getHeigh(1),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Styles.whiteColor: Colors.grey.shade300),
                    ))));
      },
    );
  }
}
