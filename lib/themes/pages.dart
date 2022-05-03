import 'package:get/get.dart';
import 'package:sain_book_project/screens/customer/customer_view.dart';
import 'package:sain_book_project/screens/dashboard/dashboard_view.dart';
import 'package:sain_book_project/screens/login/login_view.dart';
import 'package:sain_book_project/screens/user/user_view.dart';
import 'package:sain_book_project/themes/routes.dart';
import '../screens/addnew_b_ill/addnew_b_ill_view.dart';
import '../screens/barcode/barcode_search/barcode_search_view.dart';
import '../screens/barcode/barcode_view.dart';
import '../screens/company/company_list.dart';
import '../screens/company/company_view.dart';
import '../screens/company_revenue/company_revenue_view.dart';
import '../screens/courier/courier_view.dart';
import '../screens/courier/curier_list.dart';
import '../screens/customer/customer_list.dart';
import '../screens/customer_sell/bill_list.dart';
import '../screens/customer_sell/customer_sell_view.dart';
import '../screens/godown_instoke/godown_instoke_view.dart';
import '../screens/home/home_view.dart';
import '../screens/payment/payment_view.dart';
import '../screens/product/product_list.dart';
import '../screens/product/product_search/product_search_view.dart';
import '../screens/product/product_view.dart';
import '../screens/product_sell_summery/product_sell_summery_view.dart';
import '../screens/return_summery/return_summery_view.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/user/user_edit_page.dart';
import '../screens/user/user_list/user_list_view.dart';
import '../screens/website/website_list.dart';
import '../screens/website/website_view.dart';
import '../screens/website_sell_summery/website_sell_summery_view.dart';

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
    GetPage(
      name: customer,
      page: () => CustomerPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: website,
      page: () => WebsitePage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: userlist,
      page: () => UserListPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: customer_list_page,
      page: () => CustomerListPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: courier_list_page,
      page: () => CurierListPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: companylist_page,
      page: () => CompanyListPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: websitelist,
      page: () => WebsiteListPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: payment_page,
      page: () => PaymentPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: godown_instoke,
      page: () => Godown_instokePage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: company_revenue,
      page: () => Company_revenuePage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: website_sell_summery,
      page: () => Website_sell_summeryPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: product_sell_summery,
      page: () => Product_sell_summeryPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: return_summery,
      page: () => Return_summeryPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: useredit,
      page: () => UserEditPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: product,
      page: () => ProductPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: barcode,
      page: () => BarcodePage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: dashboard,
      page: () => DashboardPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: addnewBill,
      page: () => AddnewBIllPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: customersell,
      page: () => Customer_sellPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: productsearch,
      page: () => Product_searchPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: barcodesearch,
      page: () => Barcode_searchPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: product_list,
      page: () => ProductList(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),GetPage(
      name: customer_sell_list,
      page: () => CustomerSellList(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
