/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:get/get.dart';
import 'route_name.dart';
import '../../presentation/ui/page/dashbaord_page.dart';
import '../../presentation/binding/binding.dart';
import '../../presentation/ui/page/page.dart';

class RouteCollection {
  RouteCollection._();

  static final routeCollection = [
    GetPage(
        binding: SplashBinding(),
        name: RouteName.slashRoute,
        page: () => const SplashPage()),
    GetPage(
        binding: LoginBinding(),
        name: RouteName.loginUserNameRoute,
        page: () => const LoginUserNamePage()),
    GetPage(
        name: RouteName.loginMobileRoute,
        page: () => const LoginMobilePage()),
    GetPage(name: RouteName.otpVerifyRoute, page: () => OtpVerifyPage()),
    GetPage(
        name: RouteName.dashboardRoute,
        page: () => const DashBoardPage()),
    GetPage(
        name: RouteName.listDeviceRoute,
        page: () => const ListDevicePage()),
    GetPage(
        name: RouteName.newDeviceAddRoute,
        page: () => const NewDevicePage()),
    GetPage(
        name: RouteName.newVendorAddRoute,
        page: () => const NewVendorAddPage()),
    GetPage(
        binding: HomeBinding(),
        name: RouteName.homeRoute,
        page: () => const HomePage()),
    GetPage(
        binding: VisitHistoryBinding(),
        name: RouteName.historyRoute,
        page: () => const HistoryPage()),
    GetPage(
        name: RouteName.qrCodeScannerRoute,
        page: () => const QRCodeScannerPage()),
    GetPage(
        name: RouteName.vendorVisitRoute, page: () => const VendorVisitPage()),
  ];
}
