// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel({this.id = 0, this.name = '', this.email = ''});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int id, final String name, final String email}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  UserModel get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call({UserModel user, String token});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$$_AuthModelCopyWith(
          _$_AuthModel value, $Res Function(_$_AuthModel) then) =
      __$$_AuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user, String token});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthModelCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$_AuthModel>
    implements _$$_AuthModelCopyWith<$Res> {
  __$$_AuthModelCopyWithImpl(
      _$_AuthModel _value, $Res Function(_$_AuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$_AuthModel(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel implements _AuthModel {
  const _$_AuthModel({this.user = const UserModel(), this.token = ''});

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelFromJson(json);

  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'AuthModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      __$$_AuthModelCopyWithImpl<_$_AuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel({final UserModel user, final String token}) =
      _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  UserModel get user;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckModel _$CheckModelFromJson(Map<String, dynamic> json) {
  return _CheckModel.fromJson(json);
}

/// @nodoc
mixin _$CheckModel {
  String get message => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckModelCopyWith<CheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckModelCopyWith<$Res> {
  factory $CheckModelCopyWith(
          CheckModel value, $Res Function(CheckModel) then) =
      _$CheckModelCopyWithImpl<$Res, CheckModel>;
  @useResult
  $Res call({String message, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$CheckModelCopyWithImpl<$Res, $Val extends CheckModel>
    implements $CheckModelCopyWith<$Res> {
  _$CheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CheckModelCopyWith<$Res>
    implements $CheckModelCopyWith<$Res> {
  factory _$$_CheckModelCopyWith(
          _$_CheckModel value, $Res Function(_$_CheckModel) then) =
      __$$_CheckModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CheckModelCopyWithImpl<$Res>
    extends _$CheckModelCopyWithImpl<$Res, _$_CheckModel>
    implements _$$_CheckModelCopyWith<$Res> {
  __$$_CheckModelCopyWithImpl(
      _$_CheckModel _value, $Res Function(_$_CheckModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$_CheckModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckModel implements _CheckModel {
  const _$_CheckModel({this.message = '', this.user = const UserModel()});

  factory _$_CheckModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final UserModel user;

  @override
  String toString() {
    return 'CheckModel(message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckModelCopyWith<_$_CheckModel> get copyWith =>
      __$$_CheckModelCopyWithImpl<_$_CheckModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckModelToJson(
      this,
    );
  }
}

abstract class _CheckModel implements CheckModel {
  const factory _CheckModel({final String message, final UserModel user}) =
      _$_CheckModel;

  factory _CheckModel.fromJson(Map<String, dynamic> json) =
      _$_CheckModel.fromJson;

  @override
  String get message;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_CheckModelCopyWith<_$_CheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
mixin _$PriceModel {
  String get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get formatted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res, PriceModel>;
  @useResult
  $Res call({String value, String currency, String formatted});
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res, $Val extends PriceModel>
    implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceModelCopyWith<$Res>
    implements $PriceModelCopyWith<$Res> {
  factory _$$_PriceModelCopyWith(
          _$_PriceModel value, $Res Function(_$_PriceModel) then) =
      __$$_PriceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String currency, String formatted});
}

/// @nodoc
class __$$_PriceModelCopyWithImpl<$Res>
    extends _$PriceModelCopyWithImpl<$Res, _$_PriceModel>
    implements _$$_PriceModelCopyWith<$Res> {
  __$$_PriceModelCopyWithImpl(
      _$_PriceModel _value, $Res Function(_$_PriceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_$_PriceModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceModel implements _PriceModel {
  const _$_PriceModel(
      {this.value = '', this.currency = '', this.formatted = ''});

  factory _$_PriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceModelFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String formatted;

  @override
  String toString() {
    return 'PriceModel(value: $value, currency: $currency, formatted: $formatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency, formatted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      __$$_PriceModelCopyWithImpl<_$_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceModelToJson(
      this,
    );
  }
}

abstract class _PriceModel implements PriceModel {
  const factory _PriceModel(
      {final String value,
      final String currency,
      final String formatted}) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  String get value;
  @override
  String get currency;
  @override
  String get formatted;
  @override
  @JsonKey(ignore: true)
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversionsModel _$ConversionsModelFromJson(Map<String, dynamic> json) {
  return _ConversionsModel.fromJson(json);
}

/// @nodoc
mixin _$ConversionsModel {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  String get defaultValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversionsModelCopyWith<ConversionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionsModelCopyWith<$Res> {
  factory $ConversionsModelCopyWith(
          ConversionsModel value, $Res Function(ConversionsModel) then) =
      _$ConversionsModelCopyWithImpl<$Res, ConversionsModel>;
  @useResult
  $Res call(
      {String small,
      String medium,
      String large,
      @JsonKey(name: 'default') String defaultValue});
}

/// @nodoc
class _$ConversionsModelCopyWithImpl<$Res, $Val extends ConversionsModel>
    implements $ConversionsModelCopyWith<$Res> {
  _$ConversionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
    Object? defaultValue = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: null == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversionsModelCopyWith<$Res>
    implements $ConversionsModelCopyWith<$Res> {
  factory _$$_ConversionsModelCopyWith(
          _$_ConversionsModel value, $Res Function(_$_ConversionsModel) then) =
      __$$_ConversionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String small,
      String medium,
      String large,
      @JsonKey(name: 'default') String defaultValue});
}

/// @nodoc
class __$$_ConversionsModelCopyWithImpl<$Res>
    extends _$ConversionsModelCopyWithImpl<$Res, _$_ConversionsModel>
    implements _$$_ConversionsModelCopyWith<$Res> {
  __$$_ConversionsModelCopyWithImpl(
      _$_ConversionsModel _value, $Res Function(_$_ConversionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
    Object? defaultValue = null,
  }) {
    return _then(_$_ConversionsModel(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: null == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversionsModel implements _ConversionsModel {
  const _$_ConversionsModel(
      {this.small = '',
      this.medium = '',
      this.large = '',
      @JsonKey(name: 'default') this.defaultValue = ''});

  factory _$_ConversionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConversionsModelFromJson(json);

  @override
  @JsonKey()
  final String small;
  @override
  @JsonKey()
  final String medium;
  @override
  @JsonKey()
  final String large;
  @override
  @JsonKey(name: 'default')
  final String defaultValue;

  @override
  String toString() {
    return 'ConversionsModel(small: $small, medium: $medium, large: $large, defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversionsModel &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, small, medium, large, defaultValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversionsModelCopyWith<_$_ConversionsModel> get copyWith =>
      __$$_ConversionsModelCopyWithImpl<_$_ConversionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversionsModelToJson(
      this,
    );
  }
}

abstract class _ConversionsModel implements ConversionsModel {
  const factory _ConversionsModel(
          {final String small,
          final String medium,
          final String large,
          @JsonKey(name: 'default') final String defaultValue}) =
      _$_ConversionsModel;

  factory _ConversionsModel.fromJson(Map<String, dynamic> json) =
      _$_ConversionsModel.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(name: 'default')
  String get defaultValue;
  @override
  @JsonKey(ignore: true)
  _$$_ConversionsModelCopyWith<_$_ConversionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  int get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  ConversionsModel get conversions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {int value,
      @JsonKey(name: 'file_name') String fileName,
      ConversionsModel conversions});

  $ConversionsModelCopyWith<$Res> get conversions;
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? fileName = null,
    Object? conversions = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as ConversionsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversionsModelCopyWith<$Res> get conversions {
    return $ConversionsModelCopyWith<$Res>(_value.conversions, (value) {
      return _then(_value.copyWith(conversions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageModelCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$_ImageModelCopyWith(
          _$_ImageModel value, $Res Function(_$_ImageModel) then) =
      __$$_ImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int value,
      @JsonKey(name: 'file_name') String fileName,
      ConversionsModel conversions});

  @override
  $ConversionsModelCopyWith<$Res> get conversions;
}

/// @nodoc
class __$$_ImageModelCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$_ImageModel>
    implements _$$_ImageModelCopyWith<$Res> {
  __$$_ImageModelCopyWithImpl(
      _$_ImageModel _value, $Res Function(_$_ImageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? fileName = null,
    Object? conversions = null,
  }) {
    return _then(_$_ImageModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as ConversionsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageModel implements _ImageModel {
  const _$_ImageModel(
      {this.value = 0,
      @JsonKey(name: 'file_name') this.fileName = '',
      this.conversions = const ConversionsModel()});

  factory _$_ImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageModelFromJson(json);

  @override
  @JsonKey()
  final int value;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey()
  final ConversionsModel conversions;

  @override
  String toString() {
    return 'ImageModel(value: $value, fileName: $fileName, conversions: $conversions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.conversions, conversions) ||
                other.conversions == conversions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, fileName, conversions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      __$$_ImageModelCopyWithImpl<_$_ImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageModelToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {final int value,
      @JsonKey(name: 'file_name') final String fileName,
      final ConversionsModel conversions}) = _$_ImageModel;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$_ImageModel.fromJson;

  @override
  int get value;
  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  ConversionsModel get conversions;
  @override
  @JsonKey(ignore: true)
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PriceModel get price => throw _privateConstructorUsedError;
  PriceModel get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  PriceModel get unitPrice => throw _privateConstructorUsedError;
  ImageModel get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_quantity')
  int get totalQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'product_id') int productId,
      String title,
      String description,
      PriceModel price,
      PriceModel total,
      @JsonKey(name: 'unit_price') PriceModel unitPrice,
      ImageModel image,
      @JsonKey(name: 'total_quantity') int totalQuantity});

  $PriceModelCopyWith<$Res> get price;
  $PriceModelCopyWith<$Res> get total;
  $PriceModelCopyWith<$Res> get unitPrice;
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? total = null,
    Object? unitPrice = null,
    Object? image = null,
    Object? totalQuantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res> get price {
    return $PriceModelCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res> get total {
    return $PriceModelCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res> get unitPrice {
    return $PriceModelCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get image {
    return $ImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'product_id') int productId,
      String title,
      String description,
      PriceModel price,
      PriceModel total,
      @JsonKey(name: 'unit_price') PriceModel unitPrice,
      ImageModel image,
      @JsonKey(name: 'total_quantity') int totalQuantity});

  @override
  $PriceModelCopyWith<$Res> get price;
  @override
  $PriceModelCopyWith<$Res> get total;
  @override
  $PriceModelCopyWith<$Res> get unitPrice;
  @override
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? total = null,
    Object? unitPrice = null,
    Object? image = null,
    Object? totalQuantity = null,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id = 0,
      @JsonKey(name: 'product_id') this.productId = 0,
      this.title = '',
      this.description = '',
      this.price = const PriceModel(),
      this.total = const PriceModel(),
      @JsonKey(name: 'unit_price') this.unitPrice = const PriceModel(),
      this.image = const ImageModel(),
      @JsonKey(name: 'total_quantity') this.totalQuantity = 0});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final PriceModel price;
  @override
  @JsonKey()
  final PriceModel total;
  @override
  @JsonKey(name: 'unit_price')
  final PriceModel unitPrice;
  @override
  @JsonKey()
  final ImageModel image;
  @override
  @JsonKey(name: 'total_quantity')
  final int totalQuantity;

  @override
  String toString() {
    return 'ProductModel(id: $id, productId: $productId, title: $title, description: $description, price: $price, total: $total, unitPrice: $unitPrice, image: $image, totalQuantity: $totalQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, title,
      description, price, total, unitPrice, image, totalQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
          {final int id,
          @JsonKey(name: 'product_id') final int productId,
          final String title,
          final String description,
          final PriceModel price,
          final PriceModel total,
          @JsonKey(name: 'unit_price') final PriceModel unitPrice,
          final ImageModel image,
          @JsonKey(name: 'total_quantity') final int totalQuantity}) =
      _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  String get title;
  @override
  String get description;
  @override
  PriceModel get price;
  @override
  PriceModel get total;
  @override
  @JsonKey(name: 'unit_price')
  PriceModel get unitPrice;
  @override
  ImageModel get image;
  @override
  @JsonKey(name: 'total_quantity')
  int get totalQuantity;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLinksModel _$PaginationLinksModelFromJson(Map<String, dynamic> json) {
  return _PaginationLinksModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationLinksModel {
  String get first => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;
  String get prev => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinksModelCopyWith<PaginationLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinksModelCopyWith<$Res> {
  factory $PaginationLinksModelCopyWith(PaginationLinksModel value,
          $Res Function(PaginationLinksModel) then) =
      _$PaginationLinksModelCopyWithImpl<$Res, PaginationLinksModel>;
  @useResult
  $Res call({String first, String last, String prev, String next});
}

/// @nodoc
class _$PaginationLinksModelCopyWithImpl<$Res,
        $Val extends PaginationLinksModel>
    implements $PaginationLinksModelCopyWith<$Res> {
  _$PaginationLinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationLinksModelCopyWith<$Res>
    implements $PaginationLinksModelCopyWith<$Res> {
  factory _$$_PaginationLinksModelCopyWith(_$_PaginationLinksModel value,
          $Res Function(_$_PaginationLinksModel) then) =
      __$$_PaginationLinksModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String first, String last, String prev, String next});
}

/// @nodoc
class __$$_PaginationLinksModelCopyWithImpl<$Res>
    extends _$PaginationLinksModelCopyWithImpl<$Res, _$_PaginationLinksModel>
    implements _$$_PaginationLinksModelCopyWith<$Res> {
  __$$_PaginationLinksModelCopyWithImpl(_$_PaginationLinksModel _value,
      $Res Function(_$_PaginationLinksModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = null,
    Object? next = null,
  }) {
    return _then(_$_PaginationLinksModel(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationLinksModel implements _PaginationLinksModel {
  const _$_PaginationLinksModel(
      {this.first = '', this.last = '', this.prev = '', this.next = ''});

  factory _$_PaginationLinksModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationLinksModelFromJson(json);

  @override
  @JsonKey()
  final String first;
  @override
  @JsonKey()
  final String last;
  @override
  @JsonKey()
  final String prev;
  @override
  @JsonKey()
  final String next;

  @override
  String toString() {
    return 'PaginationLinksModel(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationLinksModel &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationLinksModelCopyWith<_$_PaginationLinksModel> get copyWith =>
      __$$_PaginationLinksModelCopyWithImpl<_$_PaginationLinksModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationLinksModelToJson(
      this,
    );
  }
}

abstract class _PaginationLinksModel implements PaginationLinksModel {
  const factory _PaginationLinksModel(
      {final String first,
      final String last,
      final String prev,
      final String next}) = _$_PaginationLinksModel;

  factory _PaginationLinksModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationLinksModel.fromJson;

  @override
  String get first;
  @override
  String get last;
  @override
  String get prev;
  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationLinksModelCopyWith<_$_PaginationLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkInformationModel _$LinkInformationModelFromJson(Map<String, dynamic> json) {
  return _LinkInformationModel.fromJson(json);
}

/// @nodoc
mixin _$LinkInformationModel {
  String get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkInformationModelCopyWith<LinkInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkInformationModelCopyWith<$Res> {
  factory $LinkInformationModelCopyWith(LinkInformationModel value,
          $Res Function(LinkInformationModel) then) =
      _$LinkInformationModelCopyWithImpl<$Res, LinkInformationModel>;
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class _$LinkInformationModelCopyWithImpl<$Res,
        $Val extends LinkInformationModel>
    implements $LinkInformationModelCopyWith<$Res> {
  _$LinkInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkInformationModelCopyWith<$Res>
    implements $LinkInformationModelCopyWith<$Res> {
  factory _$$_LinkInformationModelCopyWith(_$_LinkInformationModel value,
          $Res Function(_$_LinkInformationModel) then) =
      __$$_LinkInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class __$$_LinkInformationModelCopyWithImpl<$Res>
    extends _$LinkInformationModelCopyWithImpl<$Res, _$_LinkInformationModel>
    implements _$$_LinkInformationModelCopyWith<$Res> {
  __$$_LinkInformationModelCopyWithImpl(_$_LinkInformationModel _value,
      $Res Function(_$_LinkInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$_LinkInformationModel(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkInformationModel implements _LinkInformationModel {
  const _$_LinkInformationModel(
      {this.url = '', this.label = '', this.active = false});

  factory _$_LinkInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkInformationModelFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'LinkInformationModel(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkInformationModel &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkInformationModelCopyWith<_$_LinkInformationModel> get copyWith =>
      __$$_LinkInformationModelCopyWithImpl<_$_LinkInformationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkInformationModelToJson(
      this,
    );
  }
}

abstract class _LinkInformationModel implements LinkInformationModel {
  const factory _LinkInformationModel(
      {final String url,
      final String label,
      final bool active}) = _$_LinkInformationModel;

  factory _LinkInformationModel.fromJson(Map<String, dynamic> json) =
      _$_LinkInformationModel.fromJson;

  @override
  String get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkInformationModelCopyWith<_$_LinkInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationInformationModel _$PaginationInformationModelFromJson(
    Map<String, dynamic> json) {
  return _PaginationInformationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationInformationModel {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  List<LinkInformationModel> get links => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  String get perPage => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationInformationModelCopyWith<PaginationInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInformationModelCopyWith<$Res> {
  factory $PaginationInformationModelCopyWith(PaginationInformationModel value,
          $Res Function(PaginationInformationModel) then) =
      _$PaginationInformationModelCopyWithImpl<$Res,
          PaginationInformationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      List<LinkInformationModel> links,
      String path,
      @JsonKey(name: 'per_page') String perPage,
      int to,
      int total});
}

/// @nodoc
class _$PaginationInformationModelCopyWithImpl<$Res,
        $Val extends PaginationInformationModel>
    implements $PaginationInformationModelCopyWith<$Res> {
  _$PaginationInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkInformationModel>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationInformationModelCopyWith<$Res>
    implements $PaginationInformationModelCopyWith<$Res> {
  factory _$$_PaginationInformationModelCopyWith(
          _$_PaginationInformationModel value,
          $Res Function(_$_PaginationInformationModel) then) =
      __$$_PaginationInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      List<LinkInformationModel> links,
      String path,
      @JsonKey(name: 'per_page') String perPage,
      int to,
      int total});
}

/// @nodoc
class __$$_PaginationInformationModelCopyWithImpl<$Res>
    extends _$PaginationInformationModelCopyWithImpl<$Res,
        _$_PaginationInformationModel>
    implements _$$_PaginationInformationModelCopyWith<$Res> {
  __$$_PaginationInformationModelCopyWithImpl(
      _$_PaginationInformationModel _value,
      $Res Function(_$_PaginationInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$_PaginationInformationModel(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkInformationModel>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationInformationModel implements _PaginationInformationModel {
  const _$_PaginationInformationModel(
      {@JsonKey(name: 'current_page') this.currentPage = 0,
      this.from = 0,
      @JsonKey(name: 'last_page') this.lastPage = 0,
      final List<LinkInformationModel> links = const [],
      this.path = '',
      @JsonKey(name: 'per_page') this.perPage = '',
      this.to = 0,
      this.total = 0})
      : _links = links;

  factory _$_PaginationInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationInformationModelFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey()
  final int from;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  final List<LinkInformationModel> _links;
  @override
  @JsonKey()
  List<LinkInformationModel> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey(name: 'per_page')
  final String perPage;
  @override
  @JsonKey()
  final int to;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'PaginationInformationModel(currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInformationModel &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, from, lastPage,
      const DeepCollectionEquality().hash(_links), path, perPage, to, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationInformationModelCopyWith<_$_PaginationInformationModel>
      get copyWith => __$$_PaginationInformationModelCopyWithImpl<
          _$_PaginationInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationInformationModelToJson(
      this,
    );
  }
}

abstract class _PaginationInformationModel
    implements PaginationInformationModel {
  const factory _PaginationInformationModel(
      {@JsonKey(name: 'current_page') final int currentPage,
      final int from,
      @JsonKey(name: 'last_page') final int lastPage,
      final List<LinkInformationModel> links,
      final String path,
      @JsonKey(name: 'per_page') final String perPage,
      final int to,
      final int total}) = _$_PaginationInformationModel;

  factory _PaginationInformationModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationInformationModel.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  int get from;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  List<LinkInformationModel> get links;
  @override
  String get path;
  @override
  @JsonKey(name: 'per_page')
  String get perPage;
  @override
  int get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInformationModelCopyWith<_$_PaginationInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) {
  return _ProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsModel {
  List<ProductModel> get data => throw _privateConstructorUsedError;
  PaginationLinksModel get links => throw _privateConstructorUsedError;
  PaginationInformationModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res, ProductsModel>;
  @useResult
  $Res call(
      {List<ProductModel> data,
      PaginationLinksModel links,
      PaginationInformationModel meta});

  $PaginationLinksModelCopyWith<$Res> get links;
  $PaginationInformationModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res, $Val extends ProductsModel>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinksModel,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationInformationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationLinksModelCopyWith<$Res> get links {
    return $PaginationLinksModelCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationInformationModelCopyWith<$Res> get meta {
    return $PaginationInformationModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductsModelCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$_ProductsModelCopyWith(
          _$_ProductsModel value, $Res Function(_$_ProductsModel) then) =
      __$$_ProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> data,
      PaginationLinksModel links,
      PaginationInformationModel meta});

  @override
  $PaginationLinksModelCopyWith<$Res> get links;
  @override
  $PaginationInformationModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ProductsModelCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res, _$_ProductsModel>
    implements _$$_ProductsModelCopyWith<$Res> {
  __$$_ProductsModelCopyWithImpl(
      _$_ProductsModel _value, $Res Function(_$_ProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_$_ProductsModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinksModel,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationInformationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsModel implements _ProductsModel {
  const _$_ProductsModel(
      {final List<ProductModel> data = const [],
      this.links = const PaginationLinksModel(),
      this.meta = const PaginationInformationModel()})
      : _data = data;

  factory _$_ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsModelFromJson(json);

  final List<ProductModel> _data;
  @override
  @JsonKey()
  List<ProductModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final PaginationLinksModel links;
  @override
  @JsonKey()
  final PaginationInformationModel meta;

  @override
  String toString() {
    return 'ProductsModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      __$$_ProductsModelCopyWithImpl<_$_ProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsModelToJson(
      this,
    );
  }
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
      {final List<ProductModel> data,
      final PaginationLinksModel links,
      final PaginationInformationModel meta}) = _$_ProductsModel;

  factory _ProductsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductsModel.fromJson;

  @override
  List<ProductModel> get data;
  @override
  PaginationLinksModel get links;
  @override
  PaginationInformationModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartDataModel _$CartDataModelFromJson(Map<String, dynamic> json) {
  return _CartDataModel.fromJson(json);
}

/// @nodoc
mixin _$CartDataModel {
  int get id => throw _privateConstructorUsedError;
  PriceModel get total => throw _privateConstructorUsedError;
  int get items => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDataModelCopyWith<CartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataModelCopyWith<$Res> {
  factory $CartDataModelCopyWith(
          CartDataModel value, $Res Function(CartDataModel) then) =
      _$CartDataModelCopyWithImpl<$Res, CartDataModel>;
  @useResult
  $Res call({int id, PriceModel total, int items, List<ProductModel> products});

  $PriceModelCopyWith<$Res> get total;
}

/// @nodoc
class _$CartDataModelCopyWithImpl<$Res, $Val extends CartDataModel>
    implements $CartDataModelCopyWith<$Res> {
  _$CartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? total = null,
    Object? items = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res> get total {
    return $PriceModelCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartDataModelCopyWith<$Res>
    implements $CartDataModelCopyWith<$Res> {
  factory _$$_CartDataModelCopyWith(
          _$_CartDataModel value, $Res Function(_$_CartDataModel) then) =
      __$$_CartDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PriceModel total, int items, List<ProductModel> products});

  @override
  $PriceModelCopyWith<$Res> get total;
}

/// @nodoc
class __$$_CartDataModelCopyWithImpl<$Res>
    extends _$CartDataModelCopyWithImpl<$Res, _$_CartDataModel>
    implements _$$_CartDataModelCopyWith<$Res> {
  __$$_CartDataModelCopyWithImpl(
      _$_CartDataModel _value, $Res Function(_$_CartDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? total = null,
    Object? items = null,
    Object? products = null,
  }) {
    return _then(_$_CartDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDataModel implements _CartDataModel {
  const _$_CartDataModel(
      {this.id = 0,
      this.total = const PriceModel(),
      this.items = 0,
      final List<ProductModel> products = const []})
      : _products = products;

  factory _$_CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartDataModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final PriceModel total;
  @override
  @JsonKey()
  final int items;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartDataModel(id: $id, total: $total, items: $items, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.items, items) || other.items == items) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, total, items,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDataModelCopyWith<_$_CartDataModel> get copyWith =>
      __$$_CartDataModelCopyWithImpl<_$_CartDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDataModelToJson(
      this,
    );
  }
}

abstract class _CartDataModel implements CartDataModel {
  const factory _CartDataModel(
      {final int id,
      final PriceModel total,
      final int items,
      final List<ProductModel> products}) = _$_CartDataModel;

  factory _CartDataModel.fromJson(Map<String, dynamic> json) =
      _$_CartDataModel.fromJson;

  @override
  int get id;
  @override
  PriceModel get total;
  @override
  int get items;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartDataModelCopyWith<_$_CartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  CartDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({CartDataModel data});

  $CartDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartDataModelCopyWith<$Res> get data {
    return $CartDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartDataModel data});

  @override
  $CartDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CartModel(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  const _$_CartModel({this.data = const CartDataModel()});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  @JsonKey()
  final CartDataModel data;

  @override
  String toString() {
    return 'CartModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel({final CartDataModel data}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  CartDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) {
  return _FailureModel.fromJson(json);
}

/// @nodoc
mixin _$FailureModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureModelCopyWith<FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureModelCopyWith<$Res> {
  factory $FailureModelCopyWith(
          FailureModel value, $Res Function(FailureModel) then) =
      _$FailureModelCopyWithImpl<$Res, FailureModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureModelCopyWithImpl<$Res, $Val extends FailureModel>
    implements $FailureModelCopyWith<$Res> {
  _$FailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FailureModelCopyWith<$Res>
    implements $FailureModelCopyWith<$Res> {
  factory _$$_FailureModelCopyWith(
          _$_FailureModel value, $Res Function(_$_FailureModel) then) =
      __$$_FailureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureModelCopyWithImpl<$Res>
    extends _$FailureModelCopyWithImpl<$Res, _$_FailureModel>
    implements _$$_FailureModelCopyWith<$Res> {
  __$$_FailureModelCopyWithImpl(
      _$_FailureModel _value, $Res Function(_$_FailureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureModel implements _FailureModel {
  const _$_FailureModel({this.message = ''});

  factory _$_FailureModel.fromJson(Map<String, dynamic> json) =>
      _$$_FailureModelFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'FailureModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureModel &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureModelCopyWith<_$_FailureModel> get copyWith =>
      __$$_FailureModelCopyWithImpl<_$_FailureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureModelToJson(
      this,
    );
  }
}

abstract class _FailureModel implements FailureModel {
  const factory _FailureModel({final String message}) = _$_FailureModel;

  factory _FailureModel.fromJson(Map<String, dynamic> json) =
      _$_FailureModel.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureModelCopyWith<_$_FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
