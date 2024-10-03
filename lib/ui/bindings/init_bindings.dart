import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/auth_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/loan_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/offer_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/api/api_client.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/storage_service.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';

class InitBindings implements Bindings {
  @override
  void dependencies() {
    Dio dio = Get.put(Dio());
    Connectivity con = Get.put(Connectivity());
    Get.put(ApiClient(dio: dio, connectivity: con));
    Get.put<StorageService>(StorageService());
    Get.put<AuthRepository>(AuthRepository(
      apiClient: Get.find(),
      storageService: Get.find(),
    ));

    Get.put<OfferRepository>(OfferRepository(
      apiClient: Get.find(),
    ));

    Get.put<LoanRepository>(LoanRepository(
      apiClient: Get.find(),
    ));

    Get.put(AuthController(
        authRepository: Get.find(),
        loanRepository: Get.find(),
        offerRepository: Get.find()));
  }
}
