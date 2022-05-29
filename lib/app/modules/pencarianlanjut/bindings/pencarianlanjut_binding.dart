import 'package:get/get.dart';

import '../controllers/pencarianlanjut_controller.dart';

class PencarianlanjutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PencarianlanjutController>(
      () => PencarianlanjutController(),
    );
  }
}
