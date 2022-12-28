import 'package:flightbookingapp/Screens/hotel_screen.dart';
import 'package:flightbookingapp/Screens/ticket_view.dart';
import 'package:flightbookingapp/utils/app_info_list.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';


//Home Page

class HomePage extends StatelessWidget {


  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getHeigh(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeigh(50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Good Morning",
                          style: Styles.headlineTextStyle3,

                        ),
                        Gap(AppLayout.getHeigh(5)),
                        Text(
                            "Book Tickets",
                          style: Styles.headlineTextStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: AppLayout.getHeigh(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png"),
                        )
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeigh(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.yellowShade),
                      Text(
                        "Search",
                        style: Styles.headlineTextStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeigh(25)),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),


              ],

            ),
          ),
          Gap(AppLayout.getHeigh(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:const EdgeInsets.only(left: 20),
            child: Row(
              children: TicketList.map((ticketList) => TicketView(ticketList: ticketList)).toList()
            ),
          ),
          Gap(AppLayout.getHeigh(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          Gap(AppLayout.getHeigh(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
            child: Row(
              children: HotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),
          ),

        ],
      )
    );
  }
}
