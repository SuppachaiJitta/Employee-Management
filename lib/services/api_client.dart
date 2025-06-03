import 'package:get/get.dart';

class ApiService extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://fake-json-api.mock.beeceptor.com';
    httpClient.timeout = const Duration(seconds: 15);
  }

  Future<Response> getRequest(String endpoint) async {
    return await get(endpoint);
  }

  Future<Response> postRequest(String endpoint, dynamic body) async {
    return await post(endpoint, body);
  }

  Future<Response> putRequest(String endpoint, dynamic body) async {
    return await put(endpoint, body);
  }

  Future<Response> deleteRequest(String endpoint) async {
    return await delete(endpoint);
  }
}
