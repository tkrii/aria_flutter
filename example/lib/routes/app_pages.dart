import 'package:example/app/controllers/base_controller.dart';
import 'package:example/app/modules/home_module/home_view.dart';
import 'package:example/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static String initial = AppRoutes.home;

  static List<GetPage> pages = <GetPage>[
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: BaseBinding(),
    ),
  ];
}
