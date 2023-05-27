// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'users_item_model.dart';

/// This class defines the variables used in the [users_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UsersModel extends Equatable {
  UsersModel({this.usersItemList = const []});

  List<UsersItemModel> usersItemList;

  UsersModel copyWith({List<UsersItemModel>? usersItemList}) {
    return UsersModel(
      usersItemList: usersItemList ?? this.usersItemList,
    );
  }

  @override
  List<Object?> get props => [usersItemList];
}
