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
