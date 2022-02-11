import 'package:get/get.dart';

import '../controllers/listkaryailmiah_controller.dart';

class ListkaryailmiahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListkaryailmiahController>(
      () => ListkaryailmiahController(),
    );
  }
}
