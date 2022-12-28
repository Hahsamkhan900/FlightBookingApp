import 'package:flutter/material.dart';

import 'app_layout.dart';


class TicketTabs extends StatelessWidget {

  final String firstTab;
  final String secondTab;

  const TicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeigh(3.5)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeigh(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            /*
                Airline Tickets
                 */
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeigh(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeigh(50)),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(firstTab),
              ),
            ),

            /*
                Hotels
                 */
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeigh(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeigh(50)),
                  ),
                  color: Colors.transparent),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
