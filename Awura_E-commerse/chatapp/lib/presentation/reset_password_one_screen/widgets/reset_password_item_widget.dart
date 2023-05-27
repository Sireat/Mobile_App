import '../models/reset_password_item_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResetPasswordItemWidget extends StatelessWidget {
  ResetPasswordItemWidget(this.resetPasswordItemModelObj);

  ResetPasswordItemModel resetPasswordItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        58,
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
                46,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    91,
                  ),
                  margin: getMargin(
                    left: 3,
                  ),
                  padding: getPadding(
                    left: 4,
                    top: 1,
                    right: 4,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.txtFillGray5001,
                  child: Text(
                    resetPasswordItemModelObj.typeTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgKeepass,
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
    );
  }
}
