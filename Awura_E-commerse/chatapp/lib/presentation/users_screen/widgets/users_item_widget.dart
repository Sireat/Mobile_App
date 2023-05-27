import '../models/users_item_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsersItemWidget extends StatelessWidget {
  UsersItemWidget(this.usersItemModelObj);

  UsersItemModel usersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.outlineYellow900,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getSize(
              40,
            ),
            margin: getMargin(
              bottom: 27,
            ),
            padding: getPadding(
              left: 13,
              top: 9,
              right: 13,
              bottom: 9,
            ),
            decoration: AppDecoration.txtFillDeeporange500.copyWith(
              borderRadius: BorderRadiusStyle.txtCircleBorder20,
            ),
            child: Text(
              usersItemModelObj.buildingblocksmTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium16Indigo900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.15,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 3,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  usersItemModelObj.nameTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    209,
                  ),
                  child: Text(
                    "msg_supporting_line".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 41,
              top: 5,
              bottom: 45,
            ),
            child: Text(
              "lbl_12_45".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRomanLight13.copyWith(
                letterSpacing: getHorizontalSize(
                  0.15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
