import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/app_styles.dart';
import 'package:flightbookingapp/utils/layout_builder_widget.dart';
import 'package:flightbookingapp/utils/ticket_column_info.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeigh(20)),
        children: [
          Gap(AppLayout.getHeigh(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeigh(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img_1.png"),
                    )),
              ),
              Gap(AppLayout.getHeigh(10)),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Book Tickets",
                            style: Styles.headlineTextStyle1,
                          ),
                          Gap(AppLayout.getHeigh(5)),
                          Text(
                            "New-York",
                            style: Styles.headlineTextStyle4,
                          ),
                          Gap(AppLayout.getHeigh(8)),
                          Container(
                            decoration: BoxDecoration(
                              color: Styles.whiteColor,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getWidth(200)),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3), vertical: AppLayout.getHeigh(3)),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(AppLayout.getHeigh(3)),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF5626799),
                                  ),
                                  child: Icon(
                                    FluentSystemIcons.ic_fluent_shield_filled,
                                    color: Styles.whiteColor,
                                    size: AppLayout.getHeigh(15),

                                  ),
                                ),
                                Gap(AppLayout.getHeigh(5)),
                                const Text('Premium status' ,style: TextStyle(
                                    color: Color(0XFF526799),
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Gap(AppLayout.getHeigh(5)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(),
                      Column(),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are Tapped");
                    },
                    child: Text("Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

            ],
          ),
          Gap(AppLayout.getHeigh(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeigh(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeigh(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeigh(18)),

                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeigh(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                      shape: BoxShape.circle,
                    border: Border.all(width: AppLayout.getWidth(18), color: Color(0xFF264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25), vertical: AppLayout.getHeigh(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor,size: AppLayout.getHeigh(27),),
                      maxRadius: AppLayout.getHeigh(25),
                      backgroundColor: Styles.whiteColor,
                    ),
                    Gap(AppLayout.getHeigh(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You have got a new award", style: Styles.headlineTextStyle2.copyWith(fontWeight: FontWeight.bold, color: Styles.whiteColor),),
                        Text("You have 95 Flights in a Year",
                          style: Styles.headlineTextStyle3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeigh(25)),
          Text("Accumulated Miles", style: Styles.headlineTextStyle1,),
          Gap(AppLayout.getHeigh(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: AppLayout.getHeigh(1),
                  spreadRadius: AppLayout.getWidth(1)
                )
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeigh(15)),
                Text("192802", style: Styles.headlineTextStyle1.copyWith(fontSize: 45, fontWeight: FontWeight.w600),),
                Gap(AppLayout.getHeigh(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accured", style: Styles.headlineTextStyle4,),
                    Text("31 Dec 2022", style: Styles.headlineTextStyle4,)
                  ],
                ),
                Gap(AppLayout.getHeigh(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketColumnInfo(
                        text1: "23 042",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false
                    ),
                    TicketColumnInfo(
                        text1: "Airline Co.",
                        text2: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false
                    ),
                  ],
                ),
                Gap(AppLayout.getHeigh(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeigh(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketColumnInfo(
                        text1: "24",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false
                    ),
                    TicketColumnInfo(
                        text1: "McDonal's",
                        text2: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false
                    ),
                  ],
                ),
                Gap(AppLayout.getHeigh(8)),
                const LayoutBuilderWidget(sections: 16,isColor: false),
                Gap(AppLayout.getHeigh(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketColumnInfo(
                        text1: "52 0340",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false
                    ),
                    TicketColumnInfo(
                        text1: "Exuma",
                        text2: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false
                    ),
                  ],
                ),
                Gap(AppLayout.getHeigh(8)),
                const LayoutBuilderWidget(sections: 16,isColor: false),
                Gap(AppLayout.getHeigh(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketColumnInfo(
                        text1: "23 60",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false
                    ),
                    TicketColumnInfo(
                        text1: "Blue Stack",
                        text2: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false
                    ),
                  ],
                ),
                Gap(AppLayout.getHeigh(8)),
                const LayoutBuilderWidget(sections: 16,isColor: false),

              ],
          ),
          ),
          Gap(AppLayout.getHeigh(25)),
          InkWell(
            onTap: ()=> print("You are Tapped"),
            child: Center(
              child: Text("How to get more miles", style: Styles.headlineTextStyle3.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),),
            ),
          )
        ],
      ),
    );
  }
}
