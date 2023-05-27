import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) => ResetPasswordBloc(ResetPasswordState(
        resetPasswordModelObj: ResetPasswordModel(),
      ))
        ..add(ResetPasswordInitialEvent()),
      child: ResetPasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 8,
                top: 34,
                right: 8,
                bottom: 34,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWebcapture22,
                    height: getVerticalSize(
                      59,
                    ),
                    width: getHorizontalSize(
                      102,
                    ),
                    margin: getMargin(
                      top: 74,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      313,
                    ),
                    margin: getMargin(
                      left: 36,
                      top: 19,
                      right: 23,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_reset_password".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "msg_check_your_mail".tr,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        left: 1,
                        top: 46,
                      ),
                      padding: getPadding(
                        left: 32,
                        top: 61,
                        right: 32,
                        bottom: 61,
                      ),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                52,
                              ),
                              width: getHorizontalSize(
                                291,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: getVerticalSize(
                                        40,
                                      ),
                                      width: getHorizontalSize(
                                        291,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            4,
                                          ),
                                        ),
                                        border: Border.all(
                                          color: ColorConstant.gray600,
                                          width: getHorizontalSize(
                                            1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            width: getHorizontalSize(
                                              38,
                                            ),
                                            padding: getPadding(
                                              left: 4,
                                              top: 1,
                                              right: 4,
                                              bottom: 1,
                                            ),
                                            decoration:
                                                AppDecoration.txtFillGray5001,
                                            child: Text(
                                              "lbl_email".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRegular12,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGmaillogo,
                                          height: getVerticalSize(
                                            29,
                                          ),
                                          width: getHorizontalSize(
                                            39,
                                          ),
                                          margin: getMargin(
                                            top: 4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              41,
                            ),
                            width: getHorizontalSize(
                              302,
                            ),
                            margin: getMargin(
                              left: 7,
                              top: 41,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle2,
                                  height: getVerticalSize(
                                    41,
                                  ),
                                  width: getHorizontalSize(
                                    302,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_reset".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 41,
                              top: 41,
                              bottom: 102,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_remember_it".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray70001,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                      color: ColorConstant.yellow900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_sign_in3".tr,
                                    style: TextStyle(
                                      color: ColorConstant.yellow900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                      color: ColorConstant.yellow900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 74,
                    ),
                    child: Text(
                      "msg_2023_awra_chat".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
