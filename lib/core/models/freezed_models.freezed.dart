// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignInModel _$UserSignInModelFromJson(Map<String, dynamic> json) {
  return _UserSignInModel.fromJson(json);
}

/// @nodoc
mixin _$UserSignInModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this UserSignInModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSignInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSignInModelCopyWith<UserSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInModelCopyWith<$Res> {
  factory $UserSignInModelCopyWith(
          UserSignInModel value, $Res Function(UserSignInModel) then) =
      _$UserSignInModelCopyWithImpl<$Res, UserSignInModel>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$UserSignInModelCopyWithImpl<$Res, $Val extends UserSignInModel>
    implements $UserSignInModelCopyWith<$Res> {
  _$UserSignInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSignInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignInModelImplCopyWith<$Res>
    implements $UserSignInModelCopyWith<$Res> {
  factory _$$UserSignInModelImplCopyWith(_$UserSignInModelImpl value,
          $Res Function(_$UserSignInModelImpl) then) =
      __$$UserSignInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$UserSignInModelImplCopyWithImpl<$Res>
    extends _$UserSignInModelCopyWithImpl<$Res, _$UserSignInModelImpl>
    implements _$$UserSignInModelImplCopyWith<$Res> {
  __$$UserSignInModelImplCopyWithImpl(
      _$UserSignInModelImpl _value, $Res Function(_$UserSignInModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSignInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserSignInModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignInModelImpl implements _UserSignInModel {
  _$UserSignInModelImpl({this.email, this.password});

  factory _$UserSignInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignInModelImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserSignInModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignInModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserSignInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignInModelImplCopyWith<_$UserSignInModelImpl> get copyWith =>
      __$$UserSignInModelImplCopyWithImpl<_$UserSignInModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignInModelImplToJson(
      this,
    );
  }
}

abstract class _UserSignInModel implements UserSignInModel {
  factory _UserSignInModel({final String? email, final String? password}) =
      _$UserSignInModelImpl;

  factory _UserSignInModel.fromJson(Map<String, dynamic> json) =
      _$UserSignInModelImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;

  /// Create a copy of UserSignInModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSignInModelImplCopyWith<_$UserSignInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponse {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get creditScore => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res, SignUpResponse>;
  @useResult
  $Res call({String id, String email, String status, double creditScore});
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res, $Val extends SignUpResponse>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? status = null,
    Object? creditScore = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      creditScore: null == creditScore
          ? _value.creditScore
          : creditScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResponseImplCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$$SignUpResponseImplCopyWith(_$SignUpResponseImpl value,
          $Res Function(_$SignUpResponseImpl) then) =
      __$$SignUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String email, String status, double creditScore});
}

/// @nodoc
class __$$SignUpResponseImplCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res, _$SignUpResponseImpl>
    implements _$$SignUpResponseImplCopyWith<$Res> {
  __$$SignUpResponseImplCopyWithImpl(
      _$SignUpResponseImpl _value, $Res Function(_$SignUpResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? status = null,
    Object? creditScore = null,
  }) {
    return _then(_$SignUpResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      creditScore: null == creditScore
          ? _value.creditScore
          : creditScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseImpl implements _SignUpResponse {
  _$SignUpResponseImpl(
      {required this.id,
      required this.email,
      required this.status,
      required this.creditScore});

  factory _$SignUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String status;
  @override
  final double creditScore;

  @override
  String toString() {
    return 'SignUpResponse(id: $id, email: $email, status: $status, creditScore: $creditScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.creditScore, creditScore) ||
                other.creditScore == creditScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, status, creditScore);

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      __$$SignUpResponseImplCopyWithImpl<_$SignUpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  factory _SignUpResponse(
      {required final String id,
      required final String email,
      required final String status,
      required final double creditScore}) = _$SignUpResponseImpl;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get status;
  @override
  double get creditScore;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailRequest _$UserDetailRequestFromJson(Map<String, dynamic> json) {
  return _UserDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$UserDetailRequest {
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError; //file paths
  String? get idFile => throw _privateConstructorUsedError;
  String? get bankStatement => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;

  /// Serializes this UserDetailRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailRequestCopyWith<UserDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailRequestCopyWith<$Res> {
  factory $UserDetailRequestCopyWith(
          UserDetailRequest value, $Res Function(UserDetailRequest) then) =
      _$UserDetailRequestCopyWithImpl<$Res, UserDetailRequest>;
  @useResult
  $Res call(
      {String? firstName,
      String? middleName,
      String? lastName,
      String? fullName,
      String? address,
      String? phoneNumber,
      String? idFile,
      String? bankStatement,
      String? accountNumber,
      String? bankName});
}

/// @nodoc
class _$UserDetailRequestCopyWithImpl<$Res, $Val extends UserDetailRequest>
    implements $UserDetailRequestCopyWith<$Res> {
  _$UserDetailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? idFile = freezed,
    Object? bankStatement = freezed,
    Object? accountNumber = freezed,
    Object? bankName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idFile: freezed == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bankStatement: freezed == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailRequestImplCopyWith<$Res>
    implements $UserDetailRequestCopyWith<$Res> {
  factory _$$UserDetailRequestImplCopyWith(_$UserDetailRequestImpl value,
          $Res Function(_$UserDetailRequestImpl) then) =
      __$$UserDetailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? middleName,
      String? lastName,
      String? fullName,
      String? address,
      String? phoneNumber,
      String? idFile,
      String? bankStatement,
      String? accountNumber,
      String? bankName});
}

/// @nodoc
class __$$UserDetailRequestImplCopyWithImpl<$Res>
    extends _$UserDetailRequestCopyWithImpl<$Res, _$UserDetailRequestImpl>
    implements _$$UserDetailRequestImplCopyWith<$Res> {
  __$$UserDetailRequestImplCopyWithImpl(_$UserDetailRequestImpl _value,
      $Res Function(_$UserDetailRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? idFile = freezed,
    Object? bankStatement = freezed,
    Object? accountNumber = freezed,
    Object? bankName = freezed,
  }) {
    return _then(_$UserDetailRequestImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idFile: freezed == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bankStatement: freezed == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailRequestImpl implements _UserDetailRequest {
  _$UserDetailRequestImpl(
      {this.firstName,
      this.middleName,
      this.lastName,
      this.fullName,
      this.address,
      this.phoneNumber,
      this.idFile,
      this.bankStatement,
      this.accountNumber,
      this.bankName});

  factory _$UserDetailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailRequestImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? fullName;
  @override
  final String? address;
  @override
  final String? phoneNumber;
//file paths
  @override
  final String? idFile;
  @override
  final String? bankStatement;
  @override
  final String? accountNumber;
  @override
  final String? bankName;

  @override
  String toString() {
    return 'UserDetailRequest(firstName: $firstName, middleName: $middleName, lastName: $lastName, fullName: $fullName, address: $address, phoneNumber: $phoneNumber, idFile: $idFile, bankStatement: $bankStatement, accountNumber: $accountNumber, bankName: $bankName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.idFile, idFile) || other.idFile == idFile) &&
            (identical(other.bankStatement, bankStatement) ||
                other.bankStatement == bankStatement) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      middleName,
      lastName,
      fullName,
      address,
      phoneNumber,
      idFile,
      bankStatement,
      accountNumber,
      bankName);

  /// Create a copy of UserDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailRequestImplCopyWith<_$UserDetailRequestImpl> get copyWith =>
      __$$UserDetailRequestImplCopyWithImpl<_$UserDetailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailRequestImplToJson(
      this,
    );
  }
}

abstract class _UserDetailRequest implements UserDetailRequest {
  factory _UserDetailRequest(
      {final String? firstName,
      final String? middleName,
      final String? lastName,
      final String? fullName,
      final String? address,
      final String? phoneNumber,
      final String? idFile,
      final String? bankStatement,
      final String? accountNumber,
      final String? bankName}) = _$UserDetailRequestImpl;

  factory _UserDetailRequest.fromJson(Map<String, dynamic> json) =
      _$UserDetailRequestImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  String? get fullName;
  @override
  String? get address;
  @override
  String? get phoneNumber; //file paths
  @override
  String? get idFile;
  @override
  String? get bankStatement;
  @override
  String? get accountNumber;
  @override
  String? get bankName;

  /// Create a copy of UserDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailRequestImplCopyWith<_$UserDetailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get idFile =>
      throw _privateConstructorUsedError; // Path to identification file
  String? get bankStatement =>
      throw _privateConstructorUsedError; // Path to bank statement file
  int? get creditScore => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool get activeLoan => throw _privateConstructorUsedError;
  List<OfferModel>? get offers => throw _privateConstructorUsedError;
  List<BorrowedModel>? get borrowings => throw _privateConstructorUsedError;
  List<TransactionModel>? get transactionsSent =>
      throw _privateConstructorUsedError;
  List<TransactionModel>? get transactionsReceived =>
      throw _privateConstructorUsedError;
  List<UserDetailModel>? get userDetail => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? address,
      String? phoneNumber,
      String? idFile,
      String? bankStatement,
      int? creditScore,
      String? status,
      bool activeLoan,
      List<OfferModel>? offers,
      List<BorrowedModel>? borrowings,
      List<TransactionModel>? transactionsSent,
      List<TransactionModel>? transactionsReceived,
      List<UserDetailModel>? userDetail});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? idFile = freezed,
    Object? bankStatement = freezed,
    Object? creditScore = freezed,
    Object? status = freezed,
    Object? activeLoan = null,
    Object? offers = freezed,
    Object? borrowings = freezed,
    Object? transactionsSent = freezed,
    Object? transactionsReceived = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idFile: freezed == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bankStatement: freezed == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      creditScore: freezed == creditScore
          ? _value.creditScore
          : creditScore // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      activeLoan: null == activeLoan
          ? _value.activeLoan
          : activeLoan // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>?,
      borrowings: freezed == borrowings
          ? _value.borrowings
          : borrowings // ignore: cast_nullable_to_non_nullable
              as List<BorrowedModel>?,
      transactionsSent: freezed == transactionsSent
          ? _value.transactionsSent
          : transactionsSent // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      transactionsReceived: freezed == transactionsReceived
          ? _value.transactionsReceived
          : transactionsReceived // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as List<UserDetailModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? address,
      String? phoneNumber,
      String? idFile,
      String? bankStatement,
      int? creditScore,
      String? status,
      bool activeLoan,
      List<OfferModel>? offers,
      List<BorrowedModel>? borrowings,
      List<TransactionModel>? transactionsSent,
      List<TransactionModel>? transactionsReceived,
      List<UserDetailModel>? userDetail});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? idFile = freezed,
    Object? bankStatement = freezed,
    Object? creditScore = freezed,
    Object? status = freezed,
    Object? activeLoan = null,
    Object? offers = freezed,
    Object? borrowings = freezed,
    Object? transactionsSent = freezed,
    Object? transactionsReceived = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$UserModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idFile: freezed == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bankStatement: freezed == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      creditScore: freezed == creditScore
          ? _value.creditScore
          : creditScore // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      activeLoan: null == activeLoan
          ? _value.activeLoan
          : activeLoan // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>?,
      borrowings: freezed == borrowings
          ? _value._borrowings
          : borrowings // ignore: cast_nullable_to_non_nullable
              as List<BorrowedModel>?,
      transactionsSent: freezed == transactionsSent
          ? _value._transactionsSent
          : transactionsSent // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      transactionsReceived: freezed == transactionsReceived
          ? _value._transactionsReceived
          : transactionsReceived // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      userDetail: freezed == userDetail
          ? _value._userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as List<UserDetailModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.fullName,
      this.email,
      this.address,
      this.phoneNumber,
      this.idFile,
      this.bankStatement,
      this.creditScore,
      this.status,
      this.activeLoan = false,
      final List<OfferModel>? offers,
      final List<BorrowedModel>? borrowings,
      final List<TransactionModel>? transactionsSent,
      final List<TransactionModel>? transactionsReceived,
      final List<UserDetailModel>? userDetail})
      : _offers = offers,
        _borrowings = borrowings,
        _transactionsSent = transactionsSent,
        _transactionsReceived = transactionsReceived,
        _userDetail = userDetail;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? phoneNumber;
  @override
  final String? idFile;
// Path to identification file
  @override
  final String? bankStatement;
// Path to bank statement file
  @override
  final int? creditScore;
  @override
  final String? status;
  @override
  @JsonKey()
  final bool activeLoan;
  final List<OfferModel>? _offers;
  @override
  List<OfferModel>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BorrowedModel>? _borrowings;
  @override
  List<BorrowedModel>? get borrowings {
    final value = _borrowings;
    if (value == null) return null;
    if (_borrowings is EqualUnmodifiableListView) return _borrowings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TransactionModel>? _transactionsSent;
  @override
  List<TransactionModel>? get transactionsSent {
    final value = _transactionsSent;
    if (value == null) return null;
    if (_transactionsSent is EqualUnmodifiableListView)
      return _transactionsSent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TransactionModel>? _transactionsReceived;
  @override
  List<TransactionModel>? get transactionsReceived {
    final value = _transactionsReceived;
    if (value == null) return null;
    if (_transactionsReceived is EqualUnmodifiableListView)
      return _transactionsReceived;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserDetailModel>? _userDetail;
  @override
  List<UserDetailModel>? get userDetail {
    final value = _userDetail;
    if (value == null) return null;
    if (_userDetail is EqualUnmodifiableListView) return _userDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(fullName: $fullName, email: $email, address: $address, phoneNumber: $phoneNumber, idFile: $idFile, bankStatement: $bankStatement, creditScore: $creditScore, status: $status, activeLoan: $activeLoan, offers: $offers, borrowings: $borrowings, transactionsSent: $transactionsSent, transactionsReceived: $transactionsReceived, userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.idFile, idFile) || other.idFile == idFile) &&
            (identical(other.bankStatement, bankStatement) ||
                other.bankStatement == bankStatement) &&
            (identical(other.creditScore, creditScore) ||
                other.creditScore == creditScore) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.activeLoan, activeLoan) ||
                other.activeLoan == activeLoan) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            const DeepCollectionEquality()
                .equals(other._borrowings, _borrowings) &&
            const DeepCollectionEquality()
                .equals(other._transactionsSent, _transactionsSent) &&
            const DeepCollectionEquality()
                .equals(other._transactionsReceived, _transactionsReceived) &&
            const DeepCollectionEquality()
                .equals(other._userDetail, _userDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      address,
      phoneNumber,
      idFile,
      bankStatement,
      creditScore,
      status,
      activeLoan,
      const DeepCollectionEquality().hash(_offers),
      const DeepCollectionEquality().hash(_borrowings),
      const DeepCollectionEquality().hash(_transactionsSent),
      const DeepCollectionEquality().hash(_transactionsReceived),
      const DeepCollectionEquality().hash(_userDetail));

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final String? fullName,
      final String? email,
      final String? address,
      final String? phoneNumber,
      final String? idFile,
      final String? bankStatement,
      final int? creditScore,
      final String? status,
      final bool activeLoan,
      final List<OfferModel>? offers,
      final List<BorrowedModel>? borrowings,
      final List<TransactionModel>? transactionsSent,
      final List<TransactionModel>? transactionsReceived,
      final List<UserDetailModel>? userDetail}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get address;
  @override
  String? get phoneNumber;
  @override
  String? get idFile; // Path to identification file
  @override
  String? get bankStatement; // Path to bank statement file
  @override
  int? get creditScore;
  @override
  String? get status;
  @override
  bool get activeLoan;
  @override
  List<OfferModel>? get offers;
  @override
  List<BorrowedModel>? get borrowings;
  @override
  List<TransactionModel>? get transactionsSent;
  @override
  List<TransactionModel>? get transactionsReceived;
  @override
  List<UserDetailModel>? get userDetail;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  int get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get interestRate => throw _privateConstructorUsedError;
  int get durationToReturn => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<BorrowedModel>? get offered => throw _privateConstructorUsedError;

  /// Serializes this OfferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {int id,
      double amount,
      double interestRate,
      int durationToReturn,
      String status,
      List<BorrowedModel>? offered});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? interestRate = null,
    Object? durationToReturn = null,
    Object? status = null,
    Object? offered = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double,
      durationToReturn: null == durationToReturn
          ? _value.durationToReturn
          : durationToReturn // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      offered: freezed == offered
          ? _value.offered
          : offered // ignore: cast_nullable_to_non_nullable
              as List<BorrowedModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferModelImplCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$OfferModelImplCopyWith(
          _$OfferModelImpl value, $Res Function(_$OfferModelImpl) then) =
      __$$OfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double amount,
      double interestRate,
      int durationToReturn,
      String status,
      List<BorrowedModel>? offered});
}

/// @nodoc
class __$$OfferModelImplCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$OfferModelImpl>
    implements _$$OfferModelImplCopyWith<$Res> {
  __$$OfferModelImplCopyWithImpl(
      _$OfferModelImpl _value, $Res Function(_$OfferModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? interestRate = null,
    Object? durationToReturn = null,
    Object? status = null,
    Object? offered = freezed,
  }) {
    return _then(_$OfferModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double,
      durationToReturn: null == durationToReturn
          ? _value.durationToReturn
          : durationToReturn // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      offered: freezed == offered
          ? _value._offered
          : offered // ignore: cast_nullable_to_non_nullable
              as List<BorrowedModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferModelImpl implements _OfferModel {
  _$OfferModelImpl(
      {required this.id,
      required this.amount,
      required this.interestRate,
      required this.durationToReturn,
      required this.status,
      final List<BorrowedModel>? offered})
      : _offered = offered;

  factory _$OfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferModelImplFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final double interestRate;
  @override
  final int durationToReturn;
  @override
  final String status;
  final List<BorrowedModel>? _offered;
  @override
  List<BorrowedModel>? get offered {
    final value = _offered;
    if (value == null) return null;
    if (_offered is EqualUnmodifiableListView) return _offered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OfferModel(id: $id, amount: $amount, interestRate: $interestRate, durationToReturn: $durationToReturn, status: $status, offered: $offered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.interestRate, interestRate) ||
                other.interestRate == interestRate) &&
            (identical(other.durationToReturn, durationToReturn) ||
                other.durationToReturn == durationToReturn) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._offered, _offered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, interestRate,
      durationToReturn, status, const DeepCollectionEquality().hash(_offered));

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      __$$OfferModelImplCopyWithImpl<_$OfferModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferModelImplToJson(
      this,
    );
  }
}

abstract class _OfferModel implements OfferModel {
  factory _OfferModel(
      {required final int id,
      required final double amount,
      required final double interestRate,
      required final int durationToReturn,
      required final String status,
      final List<BorrowedModel>? offered}) = _$OfferModelImpl;

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$OfferModelImpl.fromJson;

  @override
  int get id;
  @override
  double get amount;
  @override
  double get interestRate;
  @override
  int get durationToReturn;
  @override
  String get status;
  @override
  List<BorrowedModel>? get offered;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BorrowedModel _$BorrowedModelFromJson(Map<String, dynamic> json) {
  return _BorrowedModel.fromJson(json);
}

/// @nodoc
mixin _$BorrowedModel {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  OfferModel? get offer => throw _privateConstructorUsedError;
  int? get offerId => throw _privateConstructorUsedError;

  /// Serializes this BorrowedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BorrowedModelCopyWith<BorrowedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorrowedModelCopyWith<$Res> {
  factory $BorrowedModelCopyWith(
          BorrowedModel value, $Res Function(BorrowedModel) then) =
      _$BorrowedModelCopyWithImpl<$Res, BorrowedModel>;
  @useResult
  $Res call({int id, String status, OfferModel? offer, int? offerId});

  $OfferModelCopyWith<$Res>? get offer;
}

/// @nodoc
class _$BorrowedModelCopyWithImpl<$Res, $Val extends BorrowedModel>
    implements $BorrowedModelCopyWith<$Res> {
  _$BorrowedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? offer = freezed,
    Object? offerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferModelCopyWith<$Res>? get offer {
    if (_value.offer == null) {
      return null;
    }

    return $OfferModelCopyWith<$Res>(_value.offer!, (value) {
      return _then(_value.copyWith(offer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BorrowedModelImplCopyWith<$Res>
    implements $BorrowedModelCopyWith<$Res> {
  factory _$$BorrowedModelImplCopyWith(
          _$BorrowedModelImpl value, $Res Function(_$BorrowedModelImpl) then) =
      __$$BorrowedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status, OfferModel? offer, int? offerId});

  @override
  $OfferModelCopyWith<$Res>? get offer;
}

/// @nodoc
class __$$BorrowedModelImplCopyWithImpl<$Res>
    extends _$BorrowedModelCopyWithImpl<$Res, _$BorrowedModelImpl>
    implements _$$BorrowedModelImplCopyWith<$Res> {
  __$$BorrowedModelImplCopyWithImpl(
      _$BorrowedModelImpl _value, $Res Function(_$BorrowedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? offer = freezed,
    Object? offerId = freezed,
  }) {
    return _then(_$BorrowedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BorrowedModelImpl implements _BorrowedModel {
  _$BorrowedModelImpl(
      {required this.id, required this.status, this.offer, this.offerId});

  factory _$BorrowedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BorrowedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final OfferModel? offer;
  @override
  final int? offerId;

  @override
  String toString() {
    return 'BorrowedModel(id: $id, status: $status, offer: $offer, offerId: $offerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BorrowedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.offerId, offerId) || other.offerId == offerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, offer, offerId);

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BorrowedModelImplCopyWith<_$BorrowedModelImpl> get copyWith =>
      __$$BorrowedModelImplCopyWithImpl<_$BorrowedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BorrowedModelImplToJson(
      this,
    );
  }
}

abstract class _BorrowedModel implements BorrowedModel {
  factory _BorrowedModel(
      {required final int id,
      required final String status,
      final OfferModel? offer,
      final int? offerId}) = _$BorrowedModelImpl;

  factory _BorrowedModel.fromJson(Map<String, dynamic> json) =
      _$BorrowedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  OfferModel? get offer;
  @override
  int? get offerId;

  /// Create a copy of BorrowedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BorrowedModelImplCopyWith<_$BorrowedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  double get amount => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call({double amount, String transactionType, DateTime timestamp});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? transactionType = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String transactionType, DateTime timestamp});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? transactionType = null,
    Object? timestamp = null,
  }) {
    return _then(_$TransactionModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionModelImpl implements _TransactionModel {
  _$TransactionModelImpl(
      {required this.amount,
      required this.transactionType,
      required this.timestamp});

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

  @override
  final double amount;
  @override
  final String transactionType;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'TransactionModel(amount: $amount, transactionType: $transactionType, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, transactionType, timestamp);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  factory _TransactionModel(
      {required final double amount,
      required final String transactionType,
      required final DateTime timestamp}) = _$TransactionModelImpl;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

  @override
  double get amount;
  @override
  String get transactionType;
  @override
  DateTime get timestamp;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailModel _$UserDetailModelFromJson(Map<String, dynamic> json) {
  return _UserDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailModel {
  String get fullName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get idFile => throw _privateConstructorUsedError;
  String get bankStatement => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;

  /// Serializes this UserDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailModelCopyWith<UserDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailModelCopyWith<$Res> {
  factory $UserDetailModelCopyWith(
          UserDetailModel value, $Res Function(UserDetailModel) then) =
      _$UserDetailModelCopyWithImpl<$Res, UserDetailModel>;
  @useResult
  $Res call(
      {String fullName,
      String address,
      String phoneNumber,
      String idFile,
      String bankStatement,
      String accountNumber,
      String bankName});
}

/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res, $Val extends UserDetailModel>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? idFile = null,
    Object? bankStatement = null,
    Object? accountNumber = null,
    Object? bankName = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idFile: null == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String,
      bankStatement: null == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailModelImplCopyWith<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  factory _$$UserDetailModelImplCopyWith(_$UserDetailModelImpl value,
          $Res Function(_$UserDetailModelImpl) then) =
      __$$UserDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String address,
      String phoneNumber,
      String idFile,
      String bankStatement,
      String accountNumber,
      String bankName});
}

/// @nodoc
class __$$UserDetailModelImplCopyWithImpl<$Res>
    extends _$UserDetailModelCopyWithImpl<$Res, _$UserDetailModelImpl>
    implements _$$UserDetailModelImplCopyWith<$Res> {
  __$$UserDetailModelImplCopyWithImpl(
      _$UserDetailModelImpl _value, $Res Function(_$UserDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? idFile = null,
    Object? bankStatement = null,
    Object? accountNumber = null,
    Object? bankName = null,
  }) {
    return _then(_$UserDetailModelImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idFile: null == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String,
      bankStatement: null == bankStatement
          ? _value.bankStatement
          : bankStatement // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailModelImpl implements _UserDetailModel {
  _$UserDetailModelImpl(
      {required this.fullName,
      required this.address,
      required this.phoneNumber,
      required this.idFile,
      required this.bankStatement,
      required this.accountNumber,
      required this.bankName});

  factory _$UserDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailModelImplFromJson(json);

  @override
  final String fullName;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String idFile;
  @override
  final String bankStatement;
  @override
  final String accountNumber;
  @override
  final String bankName;

  @override
  String toString() {
    return 'UserDetailModel(fullName: $fullName, address: $address, phoneNumber: $phoneNumber, idFile: $idFile, bankStatement: $bankStatement, accountNumber: $accountNumber, bankName: $bankName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.idFile, idFile) || other.idFile == idFile) &&
            (identical(other.bankStatement, bankStatement) ||
                other.bankStatement == bankStatement) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, address, phoneNumber,
      idFile, bankStatement, accountNumber, bankName);

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      __$$UserDetailModelImplCopyWithImpl<_$UserDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UserDetailModel implements UserDetailModel {
  factory _UserDetailModel(
      {required final String fullName,
      required final String address,
      required final String phoneNumber,
      required final String idFile,
      required final String bankStatement,
      required final String accountNumber,
      required final String bankName}) = _$UserDetailModelImpl;

  factory _UserDetailModel.fromJson(Map<String, dynamic> json) =
      _$UserDetailModelImpl.fromJson;

  @override
  String get fullName;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  String get idFile;
  @override
  String get bankStatement;
  @override
  String get accountNumber;
  @override
  String get bankName;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
