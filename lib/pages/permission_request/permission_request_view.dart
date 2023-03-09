import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/constant/image_constants.dart';
import 'package:odak/permission_request/permission_request_viewmodel.dart';

import '../constant/color_constants.dart';

class PermissionRequestView extends PermissionRequestViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.05)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: context.dynamicHeight(0.25),
                  child: Image.asset(ImageConstants.permissionTopImage)),
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                height: context.dynamicHeight(0.2),
                width: context.dynamicWidth(0.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: context.dynamicHeight(0.06),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "İzin Tipi",
                            style: GoogleFonts.inter(
                                color: ColorConstants.appBlue),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: ColorConstants.appBlue,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: context.dynamicHeight(0.06),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "İzin Başlangıç Tarihi",
                            style: GoogleFonts.inter(
                                color: ColorConstants.appBlue),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: context.dynamicHeight(0.06),
                              width: context.dynamicWidth(0.12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstants.appBlue,
                              ),
                              child: Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: context.dynamicHeight(0.06),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "İzin Başlangıç Tarihi",
                            style: GoogleFonts.inter(
                                color: ColorConstants.appBlue),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: context.dynamicHeight(0.06),
                              width: context.dynamicWidth(0.12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstants.appBlue,
                              ),
                              child: Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: context.dynamicHeight(0.035),
                child: Text("Açıklama",
                    style: GoogleFonts.inter(
                        color: ColorConstants.appBlue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey)),
                height: context.dynamicHeight(0.10),
                width: context.dynamicWidth(0.9),
                child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        label: Text(
                          "Lütfen açıklama giriniz.",
                          style: GoogleFonts.inter(
                            color: Colors.grey,
                          ),
                        ))),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: context.dynamicHeight(0.035),
                child: Text("Dosya Ekle",
                    style: GoogleFonts.inter(
                        color: ColorConstants.appBlue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                dashPattern: [7, 7, 7, 7],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  height: context.dynamicHeight(0.15),
                  width: context.dynamicWidth(0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Icon(
                          Icons.image_search,
                          size: 60,
                          color: Colors.grey,
                        ),
                      ),
                      Flexible(
                        flex: 19,
                        child: Text(
                          "Dosya yüklemek veya fotoğrafını çekmek için buraya tıklayın. Dosya formatı PDF,PNG, JPG, GIF en fazla 10MB büyüklükte olacak...",
                          maxLines: 3,
                          style: GoogleFonts.inter(
                              color: Colors.grey, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.035),
              ),
              Container(
                height: context.dynamicHeight(0.05),
                width: context.dynamicWidth(0.9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    Spacer(
                      flex: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: context.dynamicHeight(0.05),
                      width: context.dynamicWidth(0.25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.permissionContainerColor,
                      ),
                      child: Text(
                        "İptal",
                        style: GoogleFonts.inter(
                            color: ColorConstants.appBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: context.dynamicHeight(0.05),
                        width: context.dynamicWidth(0.25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstants.appBlue,
                        ),
                        child: Text(
                          "GÖNDER",
                          style: GoogleFonts.inter(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
