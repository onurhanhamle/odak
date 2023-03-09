import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/context_extension_constants.dart';

import '../constant/color_constants.dart';
import 'announcement_viewmodel.dart';

class AnnouncementView extends AnnouncementViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
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
          "Duyurular",
          style: GoogleFonts.inter(fontSize: 15, color: ColorConstants.appBlue),
        ),
      ),
      body: !isFinish
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.only(
                  left: context.dynamicWidth(0.05),
                  right: context.dynamicWidth(0.05)),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hoşgeldiniz!",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text("Duyurular"),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                alignment: Alignment.center,
                                width: context.dynamicWidth(0.75),
                                height: context.dynamicHeight(0.06),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorConstants.appWhite,
                                    border: Border.all(
                                        color: ColorConstants.appBlue)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Ara",
                                    hintStyle: GoogleFonts.inter(
                                        color: ColorConstants.appBlue
                                            .withOpacity(0.5)),
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                )),
                            Container(
                              height: context.dynamicHeight(0.06),
                              width: context.dynamicWidth(0.12),
                              decoration: BoxDecoration(
                                  color: ColorConstants.appBlue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month_outlined,
                                  color: ColorConstants.appWhite,
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Duyurular",
                              style: GoogleFonts.inter(
                                  color: ColorConstants.appBlue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.density_large_outlined)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.02),
                  ),
                  Expanded(
                      flex: 3,
                      child: ListView.builder(
                          shrinkWrap: false,
                          padding: const EdgeInsets.all(8),
                          itemCount: announcements.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  height: context.dynamicHeight(0.065),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.appBlue,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(15),
                                      color: ColorConstants.appWhite),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.add_alert_outlined,
                                        color: ColorConstants.appBlue,
                                        size: 35,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            announcements[index].duyuruBasligi!,
                                            style: GoogleFonts.inter(),
                                          ),
                                          Text(
                                            announcements[index].duyuruTarihi!,
                                            style: GoogleFonts.inter(
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.mail_outline,
                                                color: ColorConstants.appBlue,
                                              )),
                                          InkWell(
                                            onTap: () {
                                              buildShowModalBottomSheet(
                                                  context, index);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height:
                                                  context.dynamicHeight(0.04),
                                              width: context.dynamicWidth(0.15),
                                              decoration: BoxDecoration(
                                                  color: ColorConstants.appBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Text(
                                                "Detay",
                                                style: GoogleFonts.inter(
                                                    color: ColorConstants
                                                        .appWhite),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            );
                          }))
                ],
              ),
            ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context, int index) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            height: context.dynamicHeight(0.7),
            color: ColorConstants.appWhite,
            child: Column(
              children: [
                Container(
                  height: context.dynamicHeight(0.12),
                  color: ColorConstants.appBlue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          size: 30,
                          Icons.add_alert_outlined,
                          color: ColorConstants.appBlue,
                        ),
                        backgroundColor: ColorConstants.appWhite,
                      ),
                      Spacer(),
                      Text(
                        announcements[index].duyuruBasligi!,
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            color: ColorConstants.appWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                Container(
                  height: context.dynamicHeight(0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: ColorConstants.appBlue,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tarih"),
                              Text(
                                announcements[index].duyuruTarihi!,
                                style: GoogleFonts.inter(
                                    color: ColorConstants.appBlue),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: ColorConstants.appBlue,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Saat"),
                              Text(
                                "09:03 pm",
                                style: GoogleFonts.inter(
                                    color: ColorConstants.appBlue),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: context.dynamicWidth(1),
                  height: context.dynamicHeight(0.50),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: context.dynamicHeight(0.08),
                            bottom: context.dynamicHeight(0.02),
                            right: context.dynamicWidth(0.05),
                            left: context.dynamicWidth(0.05)),
                        height: context.dynamicHeight(0.40),
                        width: context.dynamicWidth(0.75),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstants.appBlue),
                        child: SingleChildScrollView(
                          child: Text(
                            overflow: TextOverflow.visible,
                            announcements[index].duyuruIcerigi!,
                            style: GoogleFonts.inter(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: context.dynamicHeight(0.40),
                          left: context.dynamicWidth(0.3),
                          right: context.dynamicWidth(0.3),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: ColorConstants.appBlue,
                                border: Border.all(
                                    color: ColorConstants.appWhite, width: 5),
                                borderRadius: BorderRadius.circular(20)),
                            height: context.dynamicHeight(0.08),
                            width: context.dynamicWidth(0.5),
                            child: Text(
                              "Duyuru Başlığı",
                              style: GoogleFonts.inter(
                                  color: ColorConstants.appWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          );
        });
  }
}
