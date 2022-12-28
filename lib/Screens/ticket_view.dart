import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/layout_builder_widget.dart';
import 'package:flightbookingapp/utils/ticket_column_info.dart';
import 'package:flightbookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticketList;

  final bool? isColor;

  const TicketView({Key? key, required this.ticketList, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeigh(GetPlatform.isAndroid==true?180:190),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeigh(16)),
        child: Column(
          children: [
            /*
            * Blue Part of the Flight Card
            * */
            Container(
              decoration: BoxDecoration(
                color: isColor == null? Styles.flightCardTop: Styles.whiteColor,
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
                          style: isColor == null? Styles.headlineTextStyle3
                              .copyWith(color: Colors.white): Styles.headlineTextStyle3,

                      ),
                      Expanded(child: Container()),
                      // const Spacer(),
                      const ThickContainer(isColor:true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeigh(24),
                              child:const LayoutBuilderWidget(sections: 6),
                            ),
                            Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: isColor==null?Colors.white:Styles.ticketBlue,
                                    ))),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(ticketList['to']['code'],
                          style: isColor==null? Styles.headlineTextStyle3
                              .copyWith(color: Colors.white):Styles.headlineTextStyle3)
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
                          style: isColor==null? Styles.headlineTextStyle4
                              .copyWith(color: Styles.whiteColor):Styles.headlineTextStyle4,
                        ),
                      ),
                      Text(ticketList['flying_time'],
                          style: isColor==null? Styles.headlineTextStyle3
                              .copyWith(color: Colors.white):Styles.headlineTextStyle3),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null?  Styles.headlineTextStyle4
                              .copyWith(color: Styles.whiteColor): Styles.headlineTextStyle4,
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
              color: isColor==null? Styles.orangeColor: Styles.whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeigh(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Styles.whiteColor: Colors.white,
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
                                                color: isColor==null? Styles.whiteColor:  Colors.grey.shade300),
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
                          color: isColor==null? Styles.whiteColor: Styles.whiteColor,
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
                color: isColor==null? Styles.orangeColor: Styles.whiteColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeigh(isColor==null?21:0)),
                    bottomRight: Radius.circular(AppLayout.getHeigh(isColor==null?21:0))),
              ),
              padding: EdgeInsets.fromLTRB(AppLayout.getHeigh(16), AppLayout.getHeigh(10), AppLayout.getHeigh(16), AppLayout.getHeigh(16) ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnInfo(
                          text1: ticketList['date'],
                          text2: "Date",
                          alignment: CrossAxisAlignment.start,
                        isColor: false,

                      ),
                      TicketColumnInfo(
                          text1: ticketList['departure_time'],
                          text2: "Departure Time",
                          alignment: CrossAxisAlignment.center,
                        isColor: false,
                      ),
                      TicketColumnInfo(
                          text1: ticketList['seat_number'].toString(),
                          text2: "Number",
                          alignment: CrossAxisAlignment.end,
                        isColor: false,
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
