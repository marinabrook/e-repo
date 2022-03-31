import 'package:get/get.dart';

class KaryaProvider extends GetConnect {
  // Get request
  Future<Response> getKarya(year) async{
    final url = 'https://repository.unsoed.ac.id/cgi/exportview/year/${year}/JSON/${year}.js';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearch(kata) async{
    final url = 'https://repository.unsoed.ac.id/cgi/search/archive/simple/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C%7Carchive%7C-%7Cq%3A%3AALL%3AIN%3A${kata}%7C-%7C&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  // Post request
  // Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
  // Post request with File
  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }

  // GetSocket userMessages() {
  //   return socket('https://yourapi/users/socket');
  // }
}