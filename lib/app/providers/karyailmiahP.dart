import 'package:get/get.dart';
import 'dart:convert';

class KaryaProvider extends GetConnect {
  // Get request
  Future<Response> getKarya(year) async{
    final url = 'https://repository.unsoed.ac.id/cgi/exportview/year/${year}/JSON/${year}.js';
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