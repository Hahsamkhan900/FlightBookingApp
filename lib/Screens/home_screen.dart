import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                            "Good Morning",
                          style: TextStyle(
                            fontSize: 20.0
                          ) ,

                        ),
                        Text(
                            "Book Tickets",
                          style: TextStyle(
                              fontSize: 30.0
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png"),
                        )
                      ),
                    )
                  ],
                )
              ],

            ),
          ),
        ],
      )
    );
  }
}
