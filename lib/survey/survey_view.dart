import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/survey/survey_viewmodel.dart';

import '../constant/color_constants.dart';
import '../constant/image_constants.dart';

class SurveyView extends SurveyViewModel {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildColumn(context),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        TopContainer(),
        TabController(context),
      ],
    );
  }

  DefaultTabController TabController(BuildContext context) {
    return DefaultTabController(
        length: 2, // length of tabs
        initialIndex: 0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: ColorConstants.appBlue,
                  unselectedLabelColor: Colors.grey,
                  indicator: UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 1.0, color: ColorConstants.appBlue),
                    insets: EdgeInsets.symmetric(horizontal: 14.0),
                  ),
                  tabs: [
                    Tab(
                      text: 'Devam Eden',
                    ),
                    Tab(text: 'Tamamlanan'),
                  ],
                ),
              ),
              Container(
                  height: context.dynamicHeight(0.5), //
                  // height of TabBarView
                  child: TabBarView(children: <Widget>[
                    devamEdenTabBar(context),
                    devamEdenTabBar(context),
                  ]))
            ]));
  }

  AppBar buildAppBar() {
    return AppBar(

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
          onPressed: () {},
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
        "Anketler",
        style: GoogleFonts.inter(fontSize: 15, color: ColorConstants.appBlue),
      ),
    );
  }

  Container devamEdenTabBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.075),
          horizontal: context.dynamicWidth(0.075)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Icon(
                  Icons.no_meals,
                  size: 50,
                  color: ColorConstants.appBlue,
                ),
              ),
              SizedBox(
                height: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: context.dynamicWidth(0.65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("İş Yeri Yemekleri"),
                          Text("20/20"),
                        ],
                      ),
                    ),
                    Container(
                      width: context.dynamicWidth(0.65),
                      height: context.dynamicHeight(0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.appBlue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Icon(
                  Icons.emoji_emotions,
                  size: 50,
                  color: ColorConstants.appBlue,
                ),
              ),
              SizedBox(
                height: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: context.dynamicWidth(0.65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("İş Yeri Yemekleri"),
                          Text("20/20"),
                        ],
                      ),
                    ),
                    Container(
                      width: context.dynamicWidth(0.65),
                      height: context.dynamicHeight(0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.appBlue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Icon(
                  Icons.bus_alert,
                  size: 50,
                  color: ColorConstants.appBlue,
                ),
              ),
              SizedBox(
                height: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: context.dynamicWidth(0.65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("İş Yeri Yemekleri"),
                          Text("20/20"),
                        ],
                      ),
                    ),
                    Container(
                      width: context.dynamicWidth(0.65),
                      height: context.dynamicHeight(0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.appBlue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Icon(
                  Icons.account_circle_sharp,
                  size: 50,
                  color: ColorConstants.appBlue,
                ),
              ),
              SizedBox(
                height: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: context.dynamicWidth(0.65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("İş Yeri Yemekleri"),
                          Text("20/20"),
                        ],
                      ),
                    ),
                    Container(
                      width: context.dynamicWidth(0.65),
                      height: context.dynamicHeight(0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.appBlue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.03),
          horizontal: context.dynamicWidth(0.05)),
      height: context.dynamicHeight(0.2),
      width: context.dynamicWidth(1),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: ColorConstants.appBlue, width: 5))),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      color: ColorConstants.appBlue,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Daha '),
                      TextSpan(
                          text: 'verimli ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'bir'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      color: ColorConstants.appBlue,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Daha '),
                      TextSpan(text: 'verimli '),
                      TextSpan(
                          text: 'görüşlerini',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      color: ColorConstants.appBlue,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'görüşlerini ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'önemseyin.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset(ImageConstants.surveyTopImage))
        ],
      ),
    );
  }
}
