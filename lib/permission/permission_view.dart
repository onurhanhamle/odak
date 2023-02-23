import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/permission/permission_viewmodel.dart';

import '../constant/color_constants.dart';
import '../constant/image_constants.dart';

class PermissionView extends PermissionViewModel {
  PermissionView createState() => new PermissionView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: context.dynamicWidth(0.075),
          right: context.dynamicWidth(0.075),
        ),
        child: Column(
          children: [
            Container(
                height: context.dynamicHeight(0.19),
                child: Image.asset(
                  ImageConstants.permissionTopImage,
                )),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bekleyen İzinler",
                  style: GoogleFonts.inter(
                      color: ColorConstants.appBlue,
                      decoration: TextDecoration.underline),
                ),
                Container(
                  alignment: Alignment.center,
                  height: context.dynamicHeight(0.04),
                  width: context.dynamicWidth(0.25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.appBlue,
                  ),
                  child: Text(
                    "İzin Talep Et",
                    style: GoogleFonts.inter(
                      color: ColorConstants.appWhite,
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: context.dynamicHeight(0.01),
                  horizontal: context.dynamicWidth(0.05)),
              width: context.dynamicWidth(0.85),
              height: context.dynamicHeight(0.23),
              decoration: BoxDecoration(
                  color: ColorConstants.permissionContainerColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "11.02.2023 - 15.02.2023 Tarihleri arası izin istiyor",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: ColorConstants.appBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.01),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "11.02.2023 - 15.02.2023 Tarihleri arası izin istiyor",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: ColorConstants.appBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.01),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "11.02.2023 - 15.02.2023 Tarihleri arası izin istiyor",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: ColorConstants.appBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Geçmiş İzinler",
                style: GoogleFonts.inter(
                    color: ColorConstants.appBlue,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: context.dynamicHeight(0.01),
                  horizontal: context.dynamicWidth(0.05)),
              width: context.dynamicWidth(0.85),
              height: context.dynamicHeight(0.23),
              decoration: BoxDecoration(
                  color: ColorConstants.permissionContainerColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "11.02.2023 - 15.02.2023 5 Gün Yıllık İzin",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: ColorConstants.appBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.01),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "11.02.2023 - 15.02.2023 5 Gün Yıllık İzin",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: ColorConstants.appBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.01),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.75),
                    height: context.dynamicHeight(0.063),
                    decoration: BoxDecoration(
                        color: ColorConstants.permissionContainerColorLight,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "11.02.2023 - 15.02.2023 5 Gün Yıllık İzin",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: ColorConstants.appBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.05),
            )
          ],
        ),
      ),
    );
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
        "İzinler",
        style: GoogleFonts.inter(fontSize: 15, color: ColorConstants.appBlue),
      ),
    );
  }
}
