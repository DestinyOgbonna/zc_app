import 'package:dio/dio.dart';

<<<<<<< HEAD:lib/utilities/api_utils.dart
import '../models/api_response.dart';
=======
import '../../models/api_response.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/utilities/api_handlers/api_utils.dart

class ApiUtils {
  static ApiResponse toApiResponse(Response res) {
    return ApiResponse(
      statusCode: res.statusCode,
      statusMessage: res.statusMessage,
      data: res.data,
    );
  }
}
