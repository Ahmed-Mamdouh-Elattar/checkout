import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  Future<Response> post({
    required Map<String, dynamic> body,
    required String url,
    String? token,
    String? contentType,
    Map<String, dynamic>? headers,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: headers ??
            {
              "Authorization": "Bearer $token",
            },
      ),
    );
    return response;
  }
}
