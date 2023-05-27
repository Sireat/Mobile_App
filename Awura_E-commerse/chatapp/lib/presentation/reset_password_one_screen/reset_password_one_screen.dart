import '../reset_password_one_screen/widgets/reset_password_item_widget.dart';
import 'bloc/reset_password_one_bloc.dart';
import 'models/reset_password_item_model.dart';
import 'models/reset_password_one_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:flutter/material.dart';

class ResetPasswordOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordOneBloc>(
      create: (context) => ResetPasswordOneBloc(ResetPasswordOneState(
        resetPasswordOneModelObj: ResetPasswordOneModel(),
      ))
        ..add(ResetPasswordOneInitialEvent()),
      child: ResetPasswordOneScreen(),
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
            left: 13,
            right: 13,
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
                margin: getMargin(
                  top: 48,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "msg_create_new_password".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold24,
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    left: 1,
                    top: 58,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 61,
                    right: 30,
                    bottom: 61,
                  ),
                  decoration: AppDecoration.outlineBlack9003f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 6,
                          right: 6,
                        ),
                        child: BlocSelector<ResetPasswordOneBloc,
                            ResetPasswordOneState, ResetPasswordOneModel?>(
                          selector: (state) => state.resetPasswordOneModelObj,
                          builder: (context, resetPasswordOneModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    10,
                                  ),
                                );
                              },
                              itemCount: resetPasswordOneModelObj
                                      ?.resetPasswordItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ResetPasswordItemModel model =
                                    resetPasswordOneModelObj
                                            ?.resetPasswordItemList[index] ??
                                        ResetPasswordItemModel();
                                return ResetPasswordItemWidget(
                                  model,
                                );
                              },
                            );
                          },
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
                          top: 40,
                          bottom: 8,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
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
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 116,
                                ),
                                child: Text(
                                  "lbl_create".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular20,
                                ),
                              ),
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
                  top: 111,
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
