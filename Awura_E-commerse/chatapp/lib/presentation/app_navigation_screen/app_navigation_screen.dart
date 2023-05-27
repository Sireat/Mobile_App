import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: getHorizontalSize(375),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: AppDecoration.fillWhiteA700,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20,
                                              top: 10,
                                              right: 20,
                                              bottom: 10),
                                          child: Text("lbl_app_navigation".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtRobotoRegular20))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(left: 20),
                                          child: Text("msg_check_your_app_s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtRobotoRegular16Bluegray400))),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black900))
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapSignUp(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_sign_up2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapVerification(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_verification"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSignIn(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_sign_in3"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapResetPassword(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_reset_password2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapResetPasswordOne(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_reset_password_one"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapUsers(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_users"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapChat(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_chat"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray400))
                                                      ])))
                                        ]))))
                      ]))));
    });
  }

  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapVerification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verificationScreen,
    );
  }

  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapResetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  onTapResetPasswordOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordOneScreen,
    );
  }

  onTapUsers(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.usersScreen,
    );
  }

  onTapChat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}
