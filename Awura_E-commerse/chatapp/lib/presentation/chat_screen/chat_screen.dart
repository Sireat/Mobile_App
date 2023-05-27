import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:chatapp/widgets/app_bar/appbar_image.dart';
import 'package:chatapp/widgets/app_bar/appbar_title.dart';
import 'package:chatapp/widgets/app_bar/custom_app_bar.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:chatapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                title: AppbarTitle(
                    text: "lbl_07_49_am".tr, margin: getMargin(left: 36)),
                actions: [
                  AppbarImage(
                      height: getSize(39),
                      width: getSize(39),
                      imagePath: ImageConstant.imgBatterylevel,
                      margin:
                          getMargin(left: 29, top: 14, right: 29, bottom: 7))
                ],
                styleType: Style.bgFillGray50),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 2),
                          padding: getPadding(
                              left: 7, top: 12, right: 7, bottom: 12),
                          decoration: AppDecoration.fillGray50,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(top: 13, bottom: 13),
                                onTap: () {
                                  onTapImgArrowleft(context);
                                }),
                            CustomButton(
                                height: getVerticalSize(47),
                                width: getHorizontalSize(49),
                                text: "lbl_d".tr,
                                margin: getMargin(left: 30),
                                variant: ButtonVariant.FillDeeporange500,
                                shape: ButtonShape.CircleBorder24,
                                fontStyle: ButtonFontStyle.RobotoMedium24),
                            Padding(
                                padding: getPadding(left: 12, top: 2),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 1),
                                          child: Text("lbl_dagmawi_kindu2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanSemiBold16
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.15)))),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_vendor".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.25))))
                                    ])),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgMenuvertical,
                                height: getVerticalSize(29),
                                width: getHorizontalSize(45),
                                margin:
                                    getMargin(top: 3, right: 30, bottom: 15))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: Text("lbl_may_23".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanRegular13
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(1.0))))),
                      Container(
                          width: getHorizontalSize(292),
                          margin: getMargin(left: 11, top: 12, right: 87),
                          padding: getPadding(
                              left: 12, top: 7, right: 12, bottom: 7),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: getHorizontalSize(258),
                                    margin: getMargin(left: 7, top: 15),
                                    child: Text("msg_i_commented_on_figma".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanRegular13
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.0)))),
                                Padding(
                                    padding: getPadding(top: 8, right: 14),
                                    child: Text("lbl_12_29_am".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanRegular13
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.0))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 82, top: 21, right: 16),
                              padding: getPadding(
                                  left: 17, top: 5, right: 17, bottom: 5),
                              decoration: AppDecoration.fillOrange4003d
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(253),
                                        margin: getMargin(top: 22),
                                        child: Text("msg_i_am_in_a_process".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0)))),
                                    Padding(
                                        padding: getPadding(top: 10, right: 9),
                                        child: Text("lbl_12_44_am".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0))))
                                  ]))),
                      Container(
                          width: getHorizontalSize(192),
                          margin: getMargin(left: 11, top: 20),
                          padding: getPadding(
                              left: 19, top: 6, right: 19, bottom: 6),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("lbl_next_month".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanRegular13
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.0)))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 7, right: 2),
                                        child: Text("lbl_12_58_am".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0)))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 87, top: 20, right: 11),
                              padding: getPadding(
                                  left: 20, top: 5, right: 20, bottom: 5),
                              decoration: AppDecoration.fillOrange4003d
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(249),
                                        margin: getMargin(top: 12, right: 1),
                                        child: Text("msg_i_am_almost_finish".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0)))),
                                    Padding(
                                        padding: getPadding(top: 1, right: 15),
                                        child: Text("lbl_1_05_am".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0))))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 14),
                              child: Text("lbl_may_24".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanRegular13
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(1.0))))),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(
                              left: 11, top: 11, right: 104, bottom: 5),
                          padding: getPadding(
                              left: 19, top: 1, right: 19, bottom: 1),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Text("msg_dagim16kindu_gmail_com".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanRegular13
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.0)))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 8, right: 11),
                                        child: Text("lbl_2_12_pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular13
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0)))))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 10, right: 11, bottom: 23),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgMicrophone,
                      height: getVerticalSize(39),
                      width: getHorizontalSize(20),
                      margin: getMargin(top: 7, bottom: 8)),
                  Expanded(
                      child: BlocSelector<ChatBloc, ChatState,
                              TextEditingController?>(
                          selector: (state) => state.messageController,
                          builder: (context, messageController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: messageController,
                                hintText: "lbl_type_a_message".tr,
                                margin: getMargin(left: 11),
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 12,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrange500),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSend)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(54)));
                          }))
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
