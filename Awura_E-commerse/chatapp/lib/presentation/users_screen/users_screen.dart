import '../users_screen/widgets/users_item_widget.dart';
import 'bloc/users_bloc.dart';
import 'models/users_item_model.dart';
import 'models/users_model.dart';
import 'package:chatapp/core/app_export.dart';
import 'package:chatapp/widgets/app_bar/appbar_image.dart';
import 'package:chatapp/widgets/app_bar/appbar_title.dart';
import 'package:chatapp/widgets/app_bar/custom_app_bar.dart';
import 'package:chatapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(UsersState(
        usersModelObj: UsersModel(),
      ))
        ..add(UsersInitialEvent()),
      child: UsersScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
          ),
          title: AppbarTitle(
            text: "lbl_07_49_am".tr,
            margin: getMargin(
              left: 36,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                39,
              ),
              width: getSize(
                39,
              ),
              imagePath: ImageConstant.imgBatterylevel,
              margin: getMargin(
                left: 29,
                top: 14,
                right: 29,
                bottom: 7,
              ),
            ),
          ],
          styleType: Style.bgFillGray50,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 11,
            bottom: 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  56,
                ),
                width: getHorizontalSize(
                  349,
                ),
                margin: getMargin(
                  left: 12,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          54,
                        ),
                        width: getHorizontalSize(
                          349,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.orange900,
                            width: getHorizontalSize(
                              1,
                            ),
                            strokeAlign: strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: BlocSelector<UsersBloc, UsersState,
                          TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            width: getHorizontalSize(
                              349,
                            ),
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: searchController,
                            hintText: "lbl_search".tr,
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                left: 12,
                                top: 16,
                                right: 12,
                                bottom: 16,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearch,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                56,
                              ),
                            ),
                            suffix: Padding(
                              padding: EdgeInsets.only(
                                right: getHorizontalSize(
                                  15,
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  searchController!.clear();
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: BlocSelector<UsersBloc, UsersState, UsersModel?>(
                    selector: (state) => state.usersModelObj,
                    builder: (context, usersModelObj) {
                      return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              1,
                            ),
                          );
                        },
                        itemCount: usersModelObj?.usersItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          UsersItemModel model =
                              usersModelObj?.usersItemList[index] ??
                                  UsersItemModel();
                          return UsersItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
