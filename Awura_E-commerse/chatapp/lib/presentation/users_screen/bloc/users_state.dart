// ignore_for_file: must_be_immutable

part of 'users_bloc.dart';

class UsersState extends Equatable {
  UsersState({
    this.searchController,
    this.usersModelObj,
  });

  TextEditingController? searchController;

  UsersModel? usersModelObj;

  @override
  List<Object?> get props => [
        searchController,
        usersModelObj,
      ];
  UsersState copyWith({
    TextEditingController? searchController,
    UsersModel? usersModelObj,
  }) {
    return UsersState(
      searchController: searchController ?? this.searchController,
      usersModelObj: usersModelObj ?? this.usersModelObj,
    );
  }
}
