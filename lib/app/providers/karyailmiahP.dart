import 'package:get/get.dart';

class KaryaProvider extends GetConnect {
  Future<Response> getKarya(year) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/exportview/year/${year}/JSON/${year}.js';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearch(kata) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/simple/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C%7Carchive%7C-%7Cq%3A%3AALL%3AIN%3A${kata}%7C-%7C&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }
}
