import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.flightCardTop,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))

              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineTextStyle3.copyWith(color: Colors.white)),
                      const Spacer(),
                      Text("LDN", style: Styles.headlineTextStyle3.copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
