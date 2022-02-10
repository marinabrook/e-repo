import 'package:get/get.dart';

import '../controllers/karyailmiah_controller.dart';

class KaryailmiahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KaryailmiahController>(
      () => KaryailmiahController(),
    );
  }
}
