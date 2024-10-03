// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignInModelImpl _$$UserSignInModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignInModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UserSignInModelImplToJson(
        _$UserSignInModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignUpResponseImpl _$$SignUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResponseImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      creditScore: (json['creditScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$SignUpResponseImplToJson(
        _$SignUpResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'status': instance.status,
      'creditScore': instance.creditScore,
    };

_$UserDetailRequestImpl _$$UserDetailRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailRequestImpl(
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      idFile: json['idFile'] as String?,
      bankStatement: json['bankStatement'] as String?,
      accountNumber: json['accountNumber'] as String?,
      bankName: json['bankName'] as String?,
    );

Map<String, dynamic> _$$UserDetailRequestImplToJson(
        _$UserDetailRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'idFile': instance.idFile,
      'bankStatement': instance.bankStatement,
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      idFile: json['idFile'] as String?,
      bankStatement: json['bankStatement'] as String?,
      creditScore: (json['creditScore'] as num?)?.toInt(),
      status: json['status'] as String?,
      activeLoan: json['activeLoan'] as bool? ?? false,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      borrowings: (json['borrowings'] as List<dynamic>?)
          ?.map((e) => BorrowedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactionsSent: (json['transactionsSent'] as List<dynamic>?)
          ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactionsReceived: (json['transactionsReceived'] as List<dynamic>?)
          ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userDetail: (json['userDetail'] as List<dynamic>?)
          ?.map((e) => UserDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'idFile': instance.idFile,
      'bankStatement': instance.bankStatement,
      'creditScore': instance.creditScore,
      'status': instance.status,
      'activeLoan': instance.activeLoan,
      'offers': instance.offers,
      'borrowings': instance.borrowings,
      'transactionsSent': instance.transactionsSent,
      'transactionsReceived': instance.transactionsReceived,
      'userDetail': instance.userDetail,
    };

_$OfferModelImpl _$$OfferModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferModelImpl(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      interestRate: (json['interestRate'] as num).toDouble(),
      durationToReturn: (json['durationToReturn'] as num).toInt(),
      status: json['status'] as String,
      offered: (json['offered'] as List<dynamic>?)
          ?.map((e) => BorrowedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OfferModelImplToJson(_$OfferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'interestRate': instance.interestRate,
      'durationToReturn': instance.durationToReturn,
      'status': instance.status,
      'offered': instance.offered,
    };

_$BorrowedModelImpl _$$BorrowedModelImplFromJson(Map<String, dynamic> json) =>
    _$BorrowedModelImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      offer: json['offer'] == null
          ? null
          : OfferModel.fromJson(json['offer'] as Map<String, dynamic>),
      offerId: (json['offerId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BorrowedModelImplToJson(_$BorrowedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'offer': instance.offer,
      'offerId': instance.offerId,
    };

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      amount: (json['amount'] as num).toDouble(),
      transactionType: json['transactionType'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'transactionType': instance.transactionType,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$UserDetailModelImpl _$$UserDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailModelImpl(
      fullName: json['fullName'] as String,
      address: json['address'] as String,
      phoneNumber: json['phoneNumber'] as String,
      idFile: json['idFile'] as String,
      bankStatement: json['bankStatement'] as String,
      accountNumber: json['accountNumber'] as String,
      bankName: json['bankName'] as String,
    );

Map<String, dynamic> _$$UserDetailModelImplToJson(
        _$UserDetailModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'idFile': instance.idFile,
      'bankStatement': instance.bankStatement,
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
    };
