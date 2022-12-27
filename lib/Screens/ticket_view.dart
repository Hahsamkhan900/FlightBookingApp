import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticketList;

  const TicketView({Key? key, required this.ticketList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeigh(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeigh(16)),
        child: Column(
          children: [
            /*
            * Blue Part of the Flight Card
            * */
            Container(
              decoration: BoxDecoration(
                color: Styles.flightCardTop,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeigh(21)),
                    topRight: Radius.circular(AppLayout.getHeigh(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeigh(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticketList['from']['code'],
                          style: Styles.headlineTextStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      // const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeigh(24),
                              child: LayoutBuilder(
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
                                          (constraints.constrainWidth() / 7)
                                              .floor(),
                                          (index) => SizedBox(
                                              width: AppLayout.getWidth(3),
                                              height: AppLayout.getHeigh(1),
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Styles.whiteColor),
                                              ))));
                                },
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: const Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(ticketList['to']['code'],
                          style: Styles.headlineTextStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Gap(AppLayout.getHeigh(1)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList['from']['name'],
                          style: Styles.headlineTextStyle4
                              .copyWith(color: Styles.whiteColor),
                        ),
                      ),
                      Text(ticketList['flying_time'],
                          style: Styles.headlineTextStyle3
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headlineTextStyle4
                              .copyWith(color: Styles.whiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            * Orange Part of the Flight Card.
            * */
            Container(

              padding: EdgeInsets.only(top: AppLayout.getHeigh(10), bottom: AppLayout.getHeigh(10)),
              color: Styles.orangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeigh(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.whiteColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getHeigh(10)),
                              bottomRight: Radius.circular(AppLayout.getHeigh(10)))),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeigh(24),
                          child: LayoutBuilder(
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
                                      (constraints.constrainWidth() / 15)
                                          .floor(),
                                      (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeigh(1),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Styles.whiteColor),
                                          ),
                                      ),
                                  ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeigh(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeigh(10)),
                              bottomLeft: Radius.circular(AppLayout.getHeigh(10)))),
                    ),
                  ),
                ],
              ),
            ),
            /*
            * Bottom Part of the Flight Card
            * */
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeigh(21)),
                    bottomRight: Radius.circular(AppLayout.getHeigh(21))),
              ),
              padding: EdgeInsets.fromLTRB(AppLayout.getHeigh(16), AppLayout.getHeigh(10), AppLayout.getHeigh(16), AppLayout.getHeigh(16) ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticketList['date'], style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor)),
                          Gap(AppLayout.getHeigh(5)),
                          Text(ticketList['flying_time'], style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor),),
                         ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticketList['departure_time'], style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor),),
                            Gap(AppLayout.getHeigh(5)),
                            Text("Departure Time", style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor),)
                          ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticketList['seat_number'].toString(), style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor),),
                          Gap(AppLayout.getHeigh(5)),
                          Text("Number", style: Styles.headlineTextStyle3.copyWith(color: Styles.whiteColor),)
                        ],
                      ),
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
