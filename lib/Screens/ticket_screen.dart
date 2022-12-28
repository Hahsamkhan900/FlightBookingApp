import 'package:flightbookingapp/Screens/ticket_view.dart';
import 'package:flightbookingapp/utils/app_info_list.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/layout_builder_widget.dart';
import 'package:flightbookingapp/utils/ticket_column_info.dart';
import 'package:flightbookingapp/utils/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25),
                  vertical: AppLayout.getHeigh(25)),
              children: [
                Gap(AppLayout.getHeigh(50)),
                Text("Tickets",
                    style: Styles.headlineTextStyle1
                        .copyWith(fontSize: AppLayout.getHeigh(45))),
                Gap(AppLayout.getHeigh(20)),
                const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeigh(20)),
                Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeigh(15)),
                    child:
                        TicketView(ticketList: TicketList[0], isColor: true),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  color: Styles.whiteColor,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeigh(20)),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TicketColumnInfo(
                            text1: "Flutter DB",
                            text2: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          TicketColumnInfo(
                            text1: "1234 123456",
                            text2: "Passenger",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeigh(20)),
                      const LayoutBuilderWidget(sections: 20, isColor: false),
                      Gap(AppLayout.getHeigh(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TicketColumnInfo(
                            text1: "36738 28274478",
                            text2: "Number of E-Ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          TicketColumnInfo(
                            text1: "B2SG28",
                            text2: "Booking Code",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeigh(20)),
                      const LayoutBuilderWidget(sections: 20, isColor: false),
                      Gap(AppLayout.getHeigh(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    "**** 2466",
                                    style: Styles.headlineTextStyle3,
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeigh(5)),
                              Text("Payment Method",
                                  style: Styles.headlineTextStyle4),
                            ],
                          ),
                          const TicketColumnInfo(
                            text1: "\$249.99",
                            text2: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                /*
                * Bar Code
                * */
                Container(
                  decoration: BoxDecoration(
                    color: Styles.whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getWidth(21)),
                      bottomRight: Radius.circular(AppLayout.getWidth(21)),

                    )

                  ),
                  margin: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(15)),
                  padding: EdgeInsets.only(top: AppLayout.getHeigh(20), bottom: AppLayout.getWidth(20)),

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeigh(15)),
                      child: BarcodeWidget(
                        data: "https//https://github.com/Hahsamkhan900/FlightBookingApp",
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ) ,
                  ),
                ),
                Gap(AppLayout.getHeigh(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeigh(15)),
                  child:
                  TicketView(ticketList: TicketList[0]),
                ),


              ],
            ),
            Positioned(
              left: AppLayout.getHeigh(25),
              top: AppLayout.getHeigh(285),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getWidth(3)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: AppLayout.getWidth(2))
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeigh(25),
              top: AppLayout.getHeigh(285),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getWidth(3)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: AppLayout.getWidth(2))
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ));
  }
}
