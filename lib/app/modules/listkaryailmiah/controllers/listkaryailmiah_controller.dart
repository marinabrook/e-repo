import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:repository_mobile_unsoed/app/modules/models/karyailmiahM.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class ListkaryailmiahController extends GetxController {
  



  Future<List<Karyailmiah>> getKaryadata() async {
    var getkarya;
    await KaryaProvider().getKarya().then((value) {
    });
    
    return getkarya;
  }

  void testKaryadata() async {
    
    await KaryaProvider().getKarya().then((value) {
      print(value.body);

     
      final karil = karyailmiahFromJson(value.body);
    });
    
    

    
  }

  final count = 0.obs;
  @override
  void onInit() {
    getKaryadata();
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
