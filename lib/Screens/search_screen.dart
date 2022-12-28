import 'package:flightbookingapp/utils/ticket_tabs.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/double_text_widget.dart';
import 'package:flightbookingapp/utils/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeigh(20)),
        children: [
          Gap(AppLayout.getHeigh(50)),
          Text("What are\nyou Looking For",
              style: Styles.headlineTextStyle1
                  .copyWith(fontSize: AppLayout.getHeigh(45))),
          Gap(AppLayout.getHeigh(20)),
          const TicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeigh(25)),
          const IconTextWidget(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeigh(20)),
          const IconTextWidget(
              icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeigh(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigh(18),
                  horizontal: AppLayout.getWidth(18)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  color: const Color(0xD91130CE)),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Styles.whiteColor),
                ),
              )),
          Gap(AppLayout.getHeigh(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeigh(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeigh(485),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeigh(15)),
                decoration: BoxDecoration(
                  color: Styles.whiteColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeigh(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeigh(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeigh(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    Gap(AppLayout.getHeigh(15)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss this chance",
                      style: Styles.headlineTextStyle2.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade600),
                    )
                  ],
                ),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeigh(250),
                        decoration: BoxDecoration(
                            color: Color(0XFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeigh(15))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeigh(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineTextStyle1.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Styles.whiteColor),
                            ),
                            Gap(AppLayout.getHeigh(15)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineTextStyle1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Styles.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -40,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeigh(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: AppLayout.getWidth(18),
                                color: const Color(0xFF189999),
                              ),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeigh(25)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeigh(210),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeigh(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeigh(18)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headlineTextStyle2.copyWith(color: Styles.whiteColor, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeigh(15)),
                        RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "😍",
                                  style: TextStyle(fontSize: AppLayout.getHeigh(30))
                                ),
                                TextSpan(
                                    text: "🥰",
                                    style: TextStyle(fontSize: AppLayout.getHeigh(35))
                                ),
                                TextSpan(
                                    text: "😘",
                                    style: TextStyle(fontSize: AppLayout.getHeigh(30))
                                ),
                              ]

                            ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
