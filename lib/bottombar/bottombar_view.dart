import 'package:flutter/material.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/mainPage/mainPage.dart';
import 'package:odak/profile/profile.dart';
import 'package:odak/qrCode/qr_code.dart';
import '../permission/permission.dart';
import '../survey/survey.dart';

class BottombarView extends StatefulWidget {
  const BottombarView({Key? key}) : super(key: key);

  @override
  State<BottombarView> createState() => _BottombarViewState();
}

class _BottombarViewState extends State<BottombarView> {
  int currentTab = 4;
  static List<Widget> _widgetList = <Widget>[
    MainPage(),
    Permission(),
    Survey(),
    Profile(),
    QrCode(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstants.appBlue,
        child: CircleAvatar(
            radius: 20,
            child: Image.asset("assets/images/dummy_april_tag1.png")),
        onPressed: () {
          setState(() {
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: ColorConstants.bottomBarBorderColor, width: 5))),
        child: BottomNavigationBar(
          selectedItemColor: ColorConstants.appBlue,
          unselectedItemColor: ColorConstants.appBlue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.appWhite,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ''),
          ],
        ),
      ),
      body: Center(
        child: _widgetList.elementAt(currentTab),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
      //
      //
      //using this page controller you can make beautiful animation effects
      /*_pageController.animateToPage(index,
          duration: Duration(milliseconds: 250), curve: Curves.easeOut);*/
    });
  }
}
