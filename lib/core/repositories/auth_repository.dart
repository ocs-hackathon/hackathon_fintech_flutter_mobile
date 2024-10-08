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

      storageService.saveData("accessToken", response["accessToken"]!);
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
        path: '/user/register/',
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

  Future<UserModel?> getSelf() async {
    try {
      var response = await apiClient.request(
        requestType: RequestType.get,
        path: 'user/dashboard',
      );
      var user = UserModel.fromJson(response["user"]);
      if (response["kycTemp"] != null) {
        user = user.copyWith(
            userDetail: [UserDetailModel.fromJson(response["kycTemp"])]);
      }
      if (response["loans"] != null) {
        var offers = <OfferModel>[];
        response["offers"].forEach((e) {
          offers.add(OfferModel.fromJson(e));
        });
        var borrowings = <BorrowedModel>[];
        response["loans"].forEach((e) {
          var b = BorrowedModel.fromJson(e);
          borrowings.add(
              b.copyWith(offer: offers.firstWhere((o) => o.id == b.offerId)));
        });

        user = user.copyWith(borrowings: borrowings);
      }
      return user;
    } catch (e) {
      outlog({e.toString()});
      return null;
    }
  }

  Future<bool> setKyc({required UserDetailRequest payload}) async {
    try {
      var response = await apiClient.sendFile(
        path: 'user/setKyc',
        files: {
          "idFile": payload.idFile!,
          "bankStatement": payload.bankStatement!,
        },
        fields: payload.toJson(),
      );
      outlog("response $response");
      return true;
    } catch (e) {
      outlog(e);
      return false;
    }
  }
}
