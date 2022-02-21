import 'package:get/get.dart';

class KaryaProvider extends GetConnect {
  

  Future<Response> getKarya() async{
    httpClient.timeout = Duration(minutes: 2);
    
    return await get('http://localhost/test/api.php?coba');
  }

  void onInit() {
    getKarya();
    super.onInit();
  }
  
}