import 'package:flightbookingapp/Screens/ticket_view.dart';
import 'package:flightbookingapp/utils/app_info_list.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/layout_builder_widget.dart';
import 'package:flightbookingapp/utils/ticket_column_info.dart';
import 'package:flightbookingapp/utils/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                        TicketView(ticketList: TicketList[0], isColor: true)
                ),
                SizedBox(height: 1,),
                Container(
                  color: Styles.whiteColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeigh(20)),
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

                    ],
                  ),
                ),
                
              ],
            ),
          ],
        ));
  }
}
