import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class TicketColumnInfo extends StatelessWidget {

  final String text1;
  final String text2;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const TicketColumnInfo({Key? key, required this.text1, required this.text2, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      // style: isColor==null?Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor):Styles.headlineTextStyle3
      children: [
        Text(text1, style: isColor==null?Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor):Styles.headlineTextStyle3),
        Gap(AppLayout.getHeigh(5)),
        Text(text2, style: isColor==null?Styles.headlineTextStyle4.copyWith(color: Styles.whiteColor):Styles.headlineTextStyle4),

      ],
    );
  }
}
