import 'package:get/get.dart';
import 'dart:convert';

class UserProvider extends GetConnect {
  final urlbase = 'https://reqres.in/api/users?page=2';
  // Get request
  Future<Response> getUser() async{
    return await get('$urlbase');
  }

  Future<Response> postUser(String name, String pekerjaan) {
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
