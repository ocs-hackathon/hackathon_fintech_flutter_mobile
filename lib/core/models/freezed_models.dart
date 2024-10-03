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
