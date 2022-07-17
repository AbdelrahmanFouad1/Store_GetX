import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@Freezed()
class LoginModel with _$LoginModel {

  const factory LoginModel({
    required int uId,
    required String email,
    required String name,
    required String token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json)
  => _$LoginModelFromJson(json);
}
