import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/auth_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/loan_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/core/repositories/offer_repository.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/ui_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class AuthController extends GetxController {
  AuthRepository authRepository;
  OfferRepository offerRepository;
  LoanRepository loanRepository;
  AuthController({
    required this.authRepository,
    required this.loanRepository,
    required this.offerRepository,
  });
  // holds request status
  final _status = RxStatus.empty().obs;
  RxStatus get status => _status.value;
  set status(RxStatus value) => _status.value = value;

  final user = UserModel().obs;
  final currentUserDetail = UserDetailRequest().obs;

  final _loanOffers = <OfferModel>[].obs;
  List<OfferModel> get loanOffers => _loanOffers;
  set loanOffers(List<OfferModel> value) => _loanOffers.value = value;

  final _borrowings = <BorrowedModel>[].obs;
  List<BorrowedModel> get borrowings => _borrowings;
  set borrowings(List<BorrowedModel> value) => _borrowings.value = value;

  Future<void> login(UserSignInModel payload) async {
    try {
      status = RxStatus.loading();
      var userResponse = await authRepository.login(payload: payload);
      if (userResponse) {
        status = RxStatus.success();
        toast("Success", "Login Successful", type: ToastTypes.success);
        await fetchCustomer();
      }
    } catch (e) {
      status = RxStatus.error();
      outlog('Error in login: ${e.toString()}');
      toast('Error', 'Something went wrong', type: ToastTypes.error);
    }
  }

  Future<void> signup(UserSignInModel payload) async {
    try {
      status = RxStatus.loading(); // Start loading

      var userResponse = await authRepository.signup(payload: payload);
      outlog(userResponse);

      if (userResponse) {
        status = RxStatus.success();
        Get.toNamed(AppRoutes.loginPage);
        toast("Success", "Signup Successful", type: ToastTypes.success);
      }
    } catch (e) {
      status = RxStatus.error();
      outlog('Error in login: ${e.toString()}');
      toast('Error', 'Something went wrong', type: ToastTypes.error);
    }
  }

  fetchCustomer() async {
    status = RxStatus.loading();
    await authRepository.getSelf().then((value) {
      if (value != null) {
        user.value = value;
        status = RxStatus.success();
        outlog("user ${user.toJson()}");
        if (value.userDetail?.isNotEmpty ?? false) {
          Get.toNamed(AppRoutes.userInformationPage);
        } else {
          borrowings = value.borrowings ?? [];
          Get.toNamed((AppRoutes.homePage));
          getLoanOffers();
        }
      } else {
        status = RxStatus.error();
      }
    });
  }

  submitUserDetail() async {
    status = RxStatus.loading();
    var fullName = currentUserDetail.value.firstName! +
        currentUserDetail.value.middleName! +
        currentUserDetail.value.lastName!;
    await authRepository
        .setKyc(payload: currentUserDetail.value.copyWith(fullName: fullName))
        .then((value) async {
      if (value) {
        status = RxStatus.success();
        toast("Success", "User detail saved successfully");
        await fetchCustomer();
      } else {
        status = RxStatus.error();
        toast("Error", "Could not save user data");
      }
    });
  }

  Future<void> takeLoan(String id) async {
    status = RxStatus.loading();
    await loanRepository.takeLoan(loanOfferId: id).then((value) {
      if (value) {
        status = RxStatus.success();
        toast("Success", "Loan Accepted Successfully",
            type: ToastTypes.success);
        fetchCustomer();
      } else {
        status = RxStatus.error();
        toast("Error", "An Error Occured", type: ToastTypes.error);
      }
    });
  }

  Future<void> payBackLoan() async {
    status = RxStatus.loading();
    await loanRepository.payBackLoan().then((value) {
      if (value) {
        status = RxStatus.success();
        toast("Success", "Loan Paid Successfully", type: ToastTypes.success);
        fetchCustomer();
      } else {
        status = RxStatus.error();
        toast("Error", "An Error Occured", type: ToastTypes.error);
      }
    });
  }

  Future<void> getLoanOffers() async {
    status = RxStatus.loading();
    await offerRepository.getAllLoanOffers().then((value) {
      if (value != null) {
        status = RxStatus.success();
        loanOffers = value;
        outlog("value found ${value.length}");
        outlog("value foun ${loanOffers.length}");
      } else {
        status = RxStatus.error();
      }
    });
  }

  logout() {
    Get.offAndToNamed(AppRoutes.signupPage);
    loanOffers = [];
    borrowings = [];
    user.value = UserModel();
  }
}
