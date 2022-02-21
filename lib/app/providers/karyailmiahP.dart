import 'package:get/get.dart';
import 'dart:convert';

class KaryaProvider extends GetConnect {
  final url = 'https://repository.unsoed.ac.id/cgi/exportview/year/2022/JSON/2022.js';
  // Get request
  Future<Response> getKarya() async{
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> postKarya(String name, String pekerjaan) {
    final body = json.encode({"name": name, "pekerjaan": pekerjaan});

    return post('https://reqres.in/api/users', body);
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