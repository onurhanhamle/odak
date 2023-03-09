import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/mainPage/mainPage.dart';
import 'package:odak/profile/profile.dart';
import 'package:odak/bottombar/bottombar_provider.dart';
import 'package:odak/qrCode/qr_code.dart';
import 'package:provider/provider.dart';
import '../MenuItem.dart';
import '../permission/permission.dart';
import '../permission_request/permission_request.dart';
import '../request_complaint/request_complaint.dart';
import '../sidebarmenu_view.dart';
import '../survey/survey.dart';

class BottombarView extends StatefulWidget {
  final int currentItemController;

  const BottombarView({
    Key? key,
    required this.currentItemController,
  }) : super(key: key);

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
    PermissionRequest(),
    RequestComplaint(),
  ];

  @override
  Widget build(BuildContext context) {
    currentTab = context.watch<BottomBarProvider>().currentTab;
    print("current tab" + currentTab.toString());

    return Scaffold(
      appBar: currentTab != 4
          ? AppBar(
              leading: Container(
                margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                width: 60,
                decoration: BoxDecoration(
                    color: ColorConstants.appWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                      )
                    ]),
                child: IconButton(
                  onPressed: () => ZoomDrawer.of(context)!.toggle(),
                  icon: Icon(
                    Icons.density_medium_rounded,
                    color: ColorConstants.appBlue,
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
                  width: 50,
                  decoration: BoxDecoration(
                      color: ColorConstants.appWhite,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                        )
                      ]),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_alert_outlined,
                      color: ColorConstants.appBlue,
                    ),
                  ),
                )
              ],
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              title: Text(
                context.watch<BottomBarProvider>().title,
                style: GoogleFonts.inter(
                    fontSize: 15, color: ColorConstants.appBlue),
              ),
            )
          : null,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstants.appBlue,
        child: CircleAvatar(
            radius: 20,
            child: Image.asset("assets/images/dummy_april_tag1.png")),
        onPressed: () {
          context.read<BottomBarProvider>().setCounter(4);
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
      context.read<BottomBarProvider>().setCounter(index);
      setState(() {
        currentTab = index;
        switch (index) {
          case 0:
            {
              context.read<BottomBarProvider>().title = 'Anasayfa';
            }
            break;
          case 1:
            {
              context.read<BottomBarProvider>().title = 'İzinler';
            }
            break;
          case 2:
            {
              context.read<BottomBarProvider>().title = 'Anketler';
            }
            break;
          case 3:
            {
              context.read<BottomBarProvider>().title = 'Profil';
            }
            break;
        }
      });
      //
      //
      //using this page controller you can make beautiful animation effects
      /*_pageController.animateToPage(index,
          duration: Duration(milliseconds: 250), curve: Curves.easeOut);*/
    });
  }
}
