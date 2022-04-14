import 'package:get/get.dart';
import 'package:sain_book_project/screens/login/login_view.dart';
import 'package:sain_book_project/screens/user/user_view.dart';
import 'package:sain_book_project/themes/routes.dart';
import '../screens/company/company_view.dart';
import '../screens/courier/courier_view.dart';
import '../screens/home/home_view.dart';
import '../screens/splash/splash_screen.dart';

appRoutes() {
  return [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: home,
      page: () => HomePage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: user,
      page: () => UserPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: company,
      page: () => CompanyPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),

    GetPage(
      name: courior,
      page: () => CourierPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
