import 'bloc/verification_bloc.dart';
import 'models/verification_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<VerificationBloc>(
      create: (context) => VerificationBloc(VerificationState(
        verificationModelObj: VerificationModel(),
      ))
        ..add(VerificationInitialEvent()),
      child: VerificationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 8,
            right: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWebcapture22,
                height: getVerticalSize(
                  59,
                ),
                width: getHorizontalSize(
                  102,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  284,
                ),
                margin: getMargin(
                  left: 50,
                  top: 19,
                  right: 38,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_verify_email".tr,
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
                        text: "msg_verify_your_email".tr,
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
                    top: 42,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 56,
                    right: 16,
                    bottom: 56,
                  ),
                  decoration: AppDecoration.outlineBlack9003f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            left: 1,
                            top: 3,
                          ),
                          decoration: AppDecoration.outlineBlack9003f1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BlocSelector<VerificationBloc, VerificationState,
                                  TextEditingController?>(
                                selector: (state) => state.otpController,
                                builder: (context, otpController) {
                                  return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 5,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(
                                        56,
                                      ),
                                      fieldWidth: getHorizontalSize(
                                        59,
                                      ),
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          4,
                                        ),
                                      ),
                                      selectedFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      activeFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      inactiveFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      inactiveColor:
                                          ColorConstant.deepOrange500,
                                      selectedColor:
                                          ColorConstant.deepOrange500,
                                      activeColor: ColorConstant.deepOrange500,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 33,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_didn_t_get_code2".tr,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: "msg_click_to_resend".tr,
                                style: TextStyle(
                                  color: ColorConstant.deepOrange500,
                                  fontSize: getFontSize(
                                    16,
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
                      ),
                      CustomButton(
                        text: "lbl_verify".tr,
                        margin: getMargin(
                          left: 19,
                          top: 42,
                          right: 18,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 96,
                  bottom: 5,
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
