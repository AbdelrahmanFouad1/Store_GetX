// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  int get uId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({int uId, String email, String name, String token});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object? uId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginModelCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$_LoginModelCopyWith(
          _$_LoginModel value, $Res Function(_$_LoginModel) then) =
      __$$_LoginModelCopyWithImpl<$Res>;
  @override
  $Res call({int uId, String email, String name, String token});
}

/// @nodoc
class __$$_LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$$_LoginModelCopyWith<$Res> {
  __$$_LoginModelCopyWithImpl(
      _$_LoginModel _value, $Res Function(_$_LoginModel) _then)
      : super(_value, (v) => _then(v as _$_LoginModel));

  @override
  _$_LoginModel get _value => super._value as _$_LoginModel;

  @override
  $Res call({
    Object? uId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_LoginModel(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel(
      {required this.uId,
      required this.email,
      required this.name,
      required this.token});

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelFromJson(json);

  @override
  final int uId;
  @override
  final String email;
  @override
  final String name;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginModel(uId: $uId, email: $email, name: $name, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginModel &&
            const DeepCollectionEquality().equals(other.uId, uId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      __$$_LoginModelCopyWithImpl<_$_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelToJson(
      this,
    );
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {required final int uId,
      required final String email,
      required final String name,
      required final String token}) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  int get uId;
  @override
  String get email;
  @override
  String get name;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
