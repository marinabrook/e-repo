import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/modules/models/karyailmiahM.dart';
import 'package:repository_mobile_unsoed/app/providers/karya_provider.dart';

class ListkaryailmiahController extends GetxController {
  



  Future<List<Karyailmiah>> getKaryadata() async {
    var getkarya;
    await KaryaProvider().getKarya().then((value) {
    });
    return getkarya;
  }

  void testKaryadata() async {
    await KaryaProvider().getKarya().then((value){
      
      print(value.statusCode);
      print(value.body);
      // final karyailmiah = karyailmiahFromJson(value.body);
      // print(karyailmiah.length);
    });
    
    

    
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
