import 'package:dio/dio.dart';
import 'package:hamam_test/models/users/users_response.dart';

final apiService = ApiService.instance;

class ApiService {
  ApiService._();

  static ApiService get instance => ApiService._();

  static String baseUrl = "https://api.konquer.club";

  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        maxRedirects: 5,
        contentType: Headers.jsonContentType,
      ),
    );
    // dio.interceptors.add(
    //   PrettyDioLogger(
    //     request: true,
    //     requestBody: true,
    //     responseBody: true,
    //     error: true,
    //     requestHeader: true,
    //     maxWidth: 200,
    //   ),
    // );
    return dio;
  }

  Future<UsersResponse?> getFightersUsers({
    String? name,
    num? minAge,
    num? maxAge,
    num? page,
  }) async {
    try {
      String url = "/api/v2/users?format=json";

      if (name != null && name.isNotEmpty) {
        url += "&name=$name";
      }

      if (minAge != null) {
        url += "&age__lte=$maxAge";
      }

      if (maxAge != null) {
        url += "&age__gte=$minAge";
      }

      if (page != null && page > 0) {
        url += "&page=$page";
      }

      final dio = createDio();

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final model = UsersResponse.fromJson(response.data);
        return model;
      }
    } catch (e, stacktrace) {
      print("getUsers exception =====>>> $e");
      print("getUsers exception stacktrace =====>>> $stacktrace");
    }

    return null;
  }
}
