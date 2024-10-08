import 'package:cloud_notes_app/routes/routeNames.dart';
import 'package:cloud_notes_app/view/addtaskPage.dart';
import 'package:cloud_notes_app/view/detailsPage.dart';
import 'package:cloud_notes_app/view/editPage.dart';
import 'package:cloud_notes_app/view/homePage.dart';
import 'package:cloud_notes_app/view/loginPage.dart';
import 'package:cloud_notes_app/view/settingsPage.dart';
import 'package:cloud_notes_app/view/signUpPage.dart';
import 'package:cloud_notes_app/view/splashScreen.dart';
import 'package:flutter/material.dart';

//* * * * * * * * * * R O U T E S   F O R    N A V I G A T I O N * * * * * * * * * *

Route<dynamic> generateRoute(RouteSettings routes) {
  switch (routes.name) {
    case '/':
    return MaterialPageRoute(builder: (context) => SplashScreen(),);
    case AppRoute.splashScreen:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
    case AppRoute.signupScreen:
      return MaterialPageRoute(
        builder: (context) => SignupPage(),
      );

    // * * * * * * * * *  for A R G U M E N T S * * * * * * * * //

    //   case AppRoute.signupScreen:
    // var param = routes.arguments as String;
    //   return MaterialPageRoute(
    //     builder: (context) => SignupPage(param),
    //   );
      
    case AppRoute.loginPage:
      return MaterialPageRoute(
        builder: (context) => LoginPage(),
      );
    case AppRoute.homePage:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
      case AppRoute.addtaskpage:
      return MaterialPageRoute(
        builder: (context) => AddNotePage(),
      );
      case AppRoute.editpage:
      return MaterialPageRoute(
        builder: (context) => EditPage(),
      );
      case AppRoute.detailspage:
      return MaterialPageRoute(
        builder: (context) => DetailsPage(),
      );
      case AppRoute.settingpage:
      return MaterialPageRoute(
        builder: (context) => SettingsPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(),
      );
  }
}
