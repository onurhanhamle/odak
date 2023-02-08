import 'package:flutter/material.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/constant/image_constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.LoginBackgroundPng),
                fit: BoxFit.fill
          )
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: context.dynamicHeight(0.1)),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(child: Image.asset(ImageConstants.LogoPng))),
                Spacer(
                  flex: 3,
                ),
                Expanded(
                  flex: 12,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: context.dynamicHeight(0.05),bottom: context.dynamicHeight(0.05)),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        width: context.dynamicWidth(0.9),
                        height: context.dynamicHeight(0.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                alignment: Alignment.center,
                                width: context.dynamicWidth(0.8),
                                height: context.dynamicHeight(0.08),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorConstants.loginTextFieldColor),
                                child: TextField(
                                  decoration: InputDecoration(

                                    icon: Icon(
                                      Icons.mail_outline_outlined,
                                      color: Colors.black,
                                    ),
                                    hintText: "E-Posta",
                                    border: InputBorder.none,
                                  ),
                                )),
                            Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    alignment: Alignment.center,
                                    width: context.dynamicWidth(0.8),
                                    height: context.dynamicHeight(0.08),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: ColorConstants.loginTextFieldColor),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        icon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.black,
                                        ),
                                        hintText: "Şifre",
                                        border: InputBorder.none,
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                      onPressed: () {}, child: Text("Şifremi Unuttum")),
                                )
                              ],
                            ),

                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: context.dynamicWidth(0.7),
                                height: context.dynamicHeight(0.07),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorConstants.loginButtonColor),
                                child: Text(
                                  "GİRİŞ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
