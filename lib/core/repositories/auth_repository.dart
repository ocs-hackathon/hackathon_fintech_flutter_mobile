import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/api/api_client.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/storage_service.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/data_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class AuthRepository {
  final ApiClient apiClient;
  final StorageService storageService;
  AuthRepository({
    required this.apiClient,
    required this.storageService,
  });

  Future<bool> login({required UserSignInModel payload}) async {
    try {
      var response = await apiClient.request(
        requestType: RequestType.post,
        path: 'auth/signIn',
        data: payload.toJson(),
        requiresAuth: false,
      );

      storageService.saveData("accessToken", response["accessToken"]);
      outlog("data from login $response");

      return true;
    } catch (e) {
      outlog({e.toString()});

      return false;
    }
  }

  Future<bool> signup({required UserSignInModel payload}) async {
    try {
      var response = await apiClient.request(
        requestType: RequestType.post,
        path: 'user/registerUser',
        data: payload.toJson(),
        requiresAuth: false,
      );
      outlog("data from signup $response");

      return true;
    } catch (e) {
      outlog({e.toString()});

      return false;
    }
  }
}
