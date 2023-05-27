import '../sign_up_screen/widgets/sign_up_item_widget.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_item_model.dart';
import 'models/sign_up_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
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
            left: 11,
            top: 31,
            right: 11,
            bottom: 31,
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
                  top: 16,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  249,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_sign_up".tr,
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
                        text: "msg_get_your_awra_chat".tr,
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
                    top: 19,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 11,
                    right: 30,
                    bottom: 11,
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
                          left: 8,
                          top: 22,
                          right: 9,
                        ),
                        child:
                            BlocSelector<SignUpBloc, SignUpState, SignUpModel?>(
                          selector: (state) => state.signUpModelObj,
                          builder: (context, signUpModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    13,
                                  ),
                                );
                              },
                              itemCount:
                                  signUpModelObj?.signUpItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                SignUpItemModel model =
                                    signUpModelObj?.signUpItemList[index] ??
                                        SignUpItemModel();
                                return SignUpItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      CustomButton(
                        text: "lbl_sign_up2".tr,
                        margin: getMargin(
                          left: 6,
                          top: 36,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          270,
                        ),
                        margin: getMargin(
                          left: 19,
                          top: 27,
                          right: 17,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_by_registering_you2".tr,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "lbl_terms_of_use".tr,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        "lbl_sign_up3".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtEnriquetaBold32,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_an2".tr,
                              style: TextStyle(
                                color: ColorConstant.gray700,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_signin".tr,
                              style: TextStyle(
                                color: ColorConstant.deepOrange500,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 51,
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
