import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/constant/image_constants.dart';
import 'package:odak/request_complaint/request_complaint_viewmodel.dart';

import '../constant/color_constants.dart';

class RequestComplaintView extends RequestComplaintViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.075)),
        child: Column(
          children: [
            Container(
              height: context.dynamicHeight(0.3),
              width: context.dynamicWidth(0.9),
              child: Image.asset(ImageConstants.requestComplaint,
                  fit: BoxFit.fill),
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 2, color: ColorConstants.appBlue))),
              child: Container(
                  width: context.dynamicWidth(0.60),
                  child: ListTile(
                    leading: Icon(
                      Icons.mode_comment_rounded,
                      color: ColorConstants.appBlue,
                    ),
                    title: Text(
                      "Açıklama Giriiz",
                      style: GoogleFonts.inter(
                          color: ColorConstants.appBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey)),
              height: context.dynamicHeight(0.25),
              width: context.dynamicWidth(0.9),
              child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        "",
                        style: GoogleFonts.inter(
                          color: Colors.grey,
                        ),
                      ))),
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Container(
              height: context.dynamicHeight(0.05),
              width: context.dynamicWidth(0.9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

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
          ],
        ),
      ),
    );
  }
}
