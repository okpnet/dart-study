import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_model.freezed.dart';
part 'login_user_model.g.dart';

@unfreezed
abstract class LoginUserModel with _$LoginUserModel {

  factory LoginUserModel({
    String? email,
    String? password
  }) = _LoginUserModel;

  factory LoginUserModel.fromJson(Map<String,Object?> json) => _$LoginUserModelFromJson(json);
}

