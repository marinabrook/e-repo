import 'package:get/get.dart';

import 'package:repository_mobile_unsoed/app/modules/about/bindings/about_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/about/views/about_view.dart';
import 'package:repository_mobile_unsoed/app/modules/faq/bindings/faq_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/faq/views/faq_view.dart';
import 'package:repository_mobile_unsoed/app/modules/home/bindings/home_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/home/views/home_view.dart';
import 'package:repository_mobile_unsoed/app/modules/karyailmiah/bindings/karyailmiah_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/karyailmiah/views/karyailmiah_view.dart';
import 'package:repository_mobile_unsoed/app/modules/listkaryailmiah/bindings/listkaryailmiah_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/listkaryailmiah/views/listkaryailmiah_view.dart';
import 'package:repository_mobile_unsoed/app/modules/petunjuk/bindings/petunjuk_binding.dart';
import 'package:repository_mobile_unsoed/app/modules/petunjuk/views/petunjuk_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.PETUNJUK,
      page: () => PetunjukView(),
      binding: PetunjukBinding(),
    ),
    GetPage(
      name: _Paths.KARYAILMIAH,
      page: () => KaryailmiahView(),
      binding: KaryailmiahBinding(),
    ),
    GetPage(
      name: _Paths.LISTKARYAILMIAH,
      page: () => ListkaryailmiahView(),
      binding: ListkaryailmiahBinding(),
    ),
  ];
}
