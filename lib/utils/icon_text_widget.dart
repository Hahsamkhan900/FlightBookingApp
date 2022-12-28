import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'app_layout.dart';
import 'app_styles.dart';


class IconTextWidget extends StatelessWidget {

  final IconData icon;
  final String text;


  const IconTextWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigh(12), horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Styles.whiteColor
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(10)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
