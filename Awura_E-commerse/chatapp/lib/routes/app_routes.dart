import 'package:flutter/material.dart';
import 'package:chatapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:chatapp/presentation/verification_screen/verification_screen.dart';
import 'package:chatapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:chatapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:chatapp/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:chatapp/presentation/users_screen/users_screen.dart';
import 'package:chatapp/presentation/chat_screen/chat_screen.dart';
import 'package:chatapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String verificationScreen = '/verification_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordOneScreen = '/reset_password_one_screen';

  static const String usersScreen = '/users_screen';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpScreen: SignUpScreen.builder,
        verificationScreen: VerificationScreen.builder,
        signInScreen: SignInScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordOneScreen: ResetPasswordOneScreen.builder,
        usersScreen: UsersScreen.builder,
        chatScreen: ChatScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUpScreen.builder
      };
}
