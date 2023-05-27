import '../sign_in_screen/widgets/sign_in_item_widget.dart';
import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_item_model.dart';
import 'models/sign_in_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(SignInState(
        signInModelObj: SignInModel(),
      ))
        ..add(SignInInitialEvent()),
      child: SignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                  244,
                ),
                margin: getMargin(
                  top: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_sign_in2".tr,
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
                        text: "msg_sign_in_to_continue".tr,
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
                    left: 35,
                    top: 47,
                    right: 35,
                    bottom: 47,
                  ),
                  decoration: AppDecoration.outlineBlack9003f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 13,
                          right: 6,
                        ),
                        child:
                            BlocSelector<SignInBloc, SignInState, SignInModel?>(
                          selector: (state) => state.signInModelObj,
                          builder: (context, signInModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    26,
                                  ),
                                );
                              },
                              itemCount:
                                  signInModelObj?.signInItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                SignInItemModel model =
                                    signInModelObj?.signInItemList[index] ??
                                        SignInItemModel();
                                return SignInItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          163,
                        ),
                        width: getHorizontalSize(
                          302,
                        ),
                        margin: getMargin(
                          top: 17,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  right: 16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_forget_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanRegular16
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 125,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.gray70001,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.yellow900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl_sign_up4".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.yellow900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w700,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.yellow900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomButton(
                              width: getHorizontalSize(
                                302,
                              ),
                              text: "lbl_login".tr,
                              margin: getMargin(
                                top: 48,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ],
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
  }
}
