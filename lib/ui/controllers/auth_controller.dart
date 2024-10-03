import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/auth_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/ui_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class AuthController extends GetxController {
  AuthRepository authRepository;
  AuthController({
    required this.authRepository,
  });
  // holds request status
  final _status = RxStatus.empty().obs;
  RxStatus get status => _status.value;
  set status(RxStatus value) => _status.value = value;

  Future<void> login(UserSignInModel payload) async {
    try {
      status = RxStatus.loading(); // Start loading

      var userResponse = await authRepository.login(payload: payload);
      outlog(userResponse);

      if (userResponse) {
        Get.toNamed(AppRoutes.homePage);
      }
    } catch (e) {
      outlog('Error in login: ${e.toString()}');
      toast('Error', 'Something went wrong', type: ToastTypes.error);
    } finally {
      status = RxStatus.error(); // Set status to error after any failure
    }
  }

  Future<void> signup(UserSignInModel payload) async {
    try {
      status = RxStatus.loading(); // Start loading

      var userResponse = await authRepository.signup(payload: payload);
      outlog(userResponse);

      if (userResponse) {
        Get.toNamed(AppRoutes.loginPage);
      }
    } catch (e) {
      outlog('Error in signup: ${e.toString()}');
      toast('Error', 'Something went wrong', type: ToastTypes.error);
    } finally {
      status = RxStatus.error(); // Set status to error after any failure
    }
  }
}
