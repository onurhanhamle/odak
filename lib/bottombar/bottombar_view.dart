import 'package:flutter/material.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/profile/profile.dart';
import 'package:odak/qrCode/qr_code.dart';

class BottombarView extends StatefulWidget {
  const BottombarView({Key? key}) : super(key: key);

  @override
  State<BottombarView> createState() => _BottombarViewState();
}

class _BottombarViewState extends State<BottombarView> {
  int currentTab = 2;
  static List<Widget> _widgetList = <Widget>[
    Text(
      'Index 2: Profile',
    ),
    Text(
      'Index 2: School',
    ),
    QrCode(),
    Text(
      'Index 3: Profileasfa',
    ),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: ColorConstants.appBlue,
            child: Icon(Icons.qr_code, size: 40),
            onPressed: () {
              setState(() {
                currentTab = 2;
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomAppBar(
          color: ColorConstants.appBlue,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.airplane_ticket_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      color: Colors.transparent,
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add_alert_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 4;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: _widgetList.elementAt(currentTab),
      ),
    );
  }
}
