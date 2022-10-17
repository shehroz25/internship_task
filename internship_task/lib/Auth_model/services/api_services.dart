import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:internship_task/Auth_model/View/Login_view.dart';
import 'package:internship_task/detail_module/view/detail_page_dubai_W_S.dart';
import 'package:internship_task/listing_module/view/listing_view.dart';

class ApiServices {
  Future<LoginApiResponse> apiCallLogin(Map<String, dynamic> param) async {
    var url = Uri.parse('https://allout.ae/api/v1/auth/signIn');
    var response = await http.post(url, body: param);

    print('Response code: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200 || response.statusCode == 201) {
      Get.to(const DubaiWatersports());
    }

    final data = jsonDecode(response.body);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }
}

class LoginApiResponse {
  final String? token;
  final String? error;

  LoginApiResponse({this.token, this.error});
}

callLoginApi() {
  final service = ApiServices();

  service.apiCallLogin(
    {
      "email": emailText.text,
      "password": passwordText.text,
    },
  ).then((value) {
    if (value.error != null) {
      print("get data >>>>>> " + value.error!);
    } else {
      print(value.token!);
    }
  });
}
