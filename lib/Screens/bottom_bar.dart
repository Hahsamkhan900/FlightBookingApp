import 'package:flightbookingapp/Screens/home_screen.dart';
import 'package:flightbookingapp/Screens/profile_screen.dart';
import 'package:flightbookingapp/Screens/search_screen.dart';
import 'package:flightbookingapp/Screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  //On Tap Select IndexValue is save in this variable
  int _selectIndex = 0;

  //Initialize the List which we have to Call on the Bottom Bar Tap
  static final List<Widget>_widgetOptions = <Widget>[
    const HomePage(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];


  //Calling the Index Number from the Flutter Bottom Bar
  //Index Number is automatically get by the Flutter in Index Variable
  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Here the WidgetOption is View according to the value of Selected index
        child:  _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        elevation: 80.0,
        showSelectedLabels:false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        mouseCursor: MaterialStateMouseCursor.clickable,
        unselectedItemColor: const Color(0xFF526480),
        iconSize: 30.0,
        items: const [
          //Home Icon
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"
          ),
          //Search Icon
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"
          ),
          //Ticket Icon
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"
          ),
          //Profile Icon
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
