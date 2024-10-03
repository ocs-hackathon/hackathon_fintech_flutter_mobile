import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

@freezed
class UserSignInModel with _$UserSignInModel {
  factory UserSignInModel({
    String? email,
    String? password,
  }) = _UserSignInModel;

  factory UserSignInModel.fromJson(Map<String, dynamic> json) =>
      _$UserSignInModelFromJson(json);
}

@freezed
class SignUpResponse with _$SignUpResponse {
  factory SignUpResponse({
    required String id,
    required String email,
    required String status,
    required double creditScore,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
class UserDetailRequest with _$UserDetailRequest {
  factory UserDetailRequest({
    String? firstName,
    String? middleName,
    String? lastName,
    String? fullName,
    String? address,
    String? phoneNumber,
    //file paths
    String? idFile,
    String? bankStatement,
    String? accountNumber,
    String? bankName,
  }) = _UserDetailRequest;

  factory UserDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$UserDetailRequestFromJson(json);
}

/// UserModel
@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? fullName,
    String? email,
    String? address,
    String? phoneNumber,
    String? idFile, // Path to identification file
    String? bankStatement, // Path to bank statement file
    int? creditScore,
    String? status,
    @Default(false) bool activeLoan,
    List<OfferModel>? offers,
    List<BorrowedModel>? borrowings,
    List<TransactionModel>? transactionsSent,
    List<TransactionModel>? transactionsReceived,
    List<UserDetailModel>? userDetail,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// OfferModel
@freezed
class OfferModel with _$OfferModel {
  factory OfferModel({
    required int id,
    required double amount,
    required double interestRate,
    required int durationToReturn,
    required String status,
    List<BorrowedModel>? offered,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
}

/// BorrowedModel
@freezed
class BorrowedModel with _$BorrowedModel {
  factory BorrowedModel(
      {required int id,
      required String status,
      OfferModel? offer,
      int? offerId}) = _BorrowedModel;

  factory BorrowedModel.fromJson(Map<String, dynamic> json) =>
      _$BorrowedModelFromJson(json);
}

/// TransactionModel
@freezed
class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    required double amount,
    required String transactionType,
    required DateTime timestamp,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

/// UserDetailModel
@freezed
class UserDetailModel with _$UserDetailModel {
  factory UserDetailModel({
    required String fullName,
    required String address,
    required String phoneNumber,
    required String idFile,
    required String bankStatement,
    required String accountNumber,
    required String bankName,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}
