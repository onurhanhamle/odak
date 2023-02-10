import 'package:flutter/material.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/qrCode/qr_code_viewmodel.dart';

import '../constant/image_constants.dart';

class QrCodeView extends QrCodeViewModel {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageConstants.qrScreenBg),
            opacity: 0.5,
            alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Image.asset(ImageConstants.qrScreenTop),
            Expanded(child: Image.asset(ImageConstants.LogoPng)),
            Spacer(),
            Expanded(flex: 2, child: Image.asset(ImageConstants.dummyAprilTag)),
            Spacer(),
            Expanded(
              child: Text(
                "Mustafa KOÇAK",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            Expanded(
              child: Text(
                "Görsel İletişim Uzmanı",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
