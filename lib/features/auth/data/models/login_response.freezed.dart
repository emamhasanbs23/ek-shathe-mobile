// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 int? get code; String? get message; bool? get error; LoginResults? get results;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'LoginResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, bool? error, LoginResults? results
});


$LoginResultsCopyWith<$Res>? get results;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as LoginResults?,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $LoginResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  LoginResults? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  LoginResults? results)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  bool? error,  LoginResults? results)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({this.code, this.message, this.error, this.results});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  bool? error;
@override final  LoginResults? results;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'LoginResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, bool? error, LoginResults? results
});


@override $LoginResultsCopyWith<$Res>? get results;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_LoginResponse(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as LoginResults?,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $LoginResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// @nodoc
mixin _$LoginResults {

 String? get data; String? get refreshToken; bool? get isNewUser;
/// Create a copy of LoginResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResultsCopyWith<LoginResults> get copyWith => _$LoginResultsCopyWithImpl<LoginResults>(this as LoginResults, _$identity);

  /// Serializes this LoginResults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResults&&(identical(other.data, data) || other.data == data)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,refreshToken,isNewUser);

@override
String toString() {
  return 'LoginResults(data: $data, refreshToken: $refreshToken, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class $LoginResultsCopyWith<$Res>  {
  factory $LoginResultsCopyWith(LoginResults value, $Res Function(LoginResults) _then) = _$LoginResultsCopyWithImpl;
@useResult
$Res call({
 String? data, String? refreshToken, bool? isNewUser
});




}
/// @nodoc
class _$LoginResultsCopyWithImpl<$Res>
    implements $LoginResultsCopyWith<$Res> {
  _$LoginResultsCopyWithImpl(this._self, this._then);

  final LoginResults _self;
  final $Res Function(LoginResults) _then;

/// Create a copy of LoginResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? refreshToken = freezed,Object? isNewUser = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,isNewUser: freezed == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResults].
extension LoginResultsPatterns on LoginResults {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResults() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResults value)  $default,){
final _that = this;
switch (_that) {
case _LoginResults():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResults value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResults() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? data,  String? refreshToken,  bool? isNewUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResults() when $default != null:
return $default(_that.data,_that.refreshToken,_that.isNewUser);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? data,  String? refreshToken,  bool? isNewUser)  $default,) {final _that = this;
switch (_that) {
case _LoginResults():
return $default(_that.data,_that.refreshToken,_that.isNewUser);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? data,  String? refreshToken,  bool? isNewUser)?  $default,) {final _that = this;
switch (_that) {
case _LoginResults() when $default != null:
return $default(_that.data,_that.refreshToken,_that.isNewUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResults implements LoginResults {
  const _LoginResults({this.data, this.refreshToken, this.isNewUser});
  factory _LoginResults.fromJson(Map<String, dynamic> json) => _$LoginResultsFromJson(json);

@override final  String? data;
@override final  String? refreshToken;
@override final  bool? isNewUser;

/// Create a copy of LoginResults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResultsCopyWith<_LoginResults> get copyWith => __$LoginResultsCopyWithImpl<_LoginResults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResults&&(identical(other.data, data) || other.data == data)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,refreshToken,isNewUser);

@override
String toString() {
  return 'LoginResults(data: $data, refreshToken: $refreshToken, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class _$LoginResultsCopyWith<$Res> implements $LoginResultsCopyWith<$Res> {
  factory _$LoginResultsCopyWith(_LoginResults value, $Res Function(_LoginResults) _then) = __$LoginResultsCopyWithImpl;
@override @useResult
$Res call({
 String? data, String? refreshToken, bool? isNewUser
});




}
/// @nodoc
class __$LoginResultsCopyWithImpl<$Res>
    implements _$LoginResultsCopyWith<$Res> {
  __$LoginResultsCopyWithImpl(this._self, this._then);

  final _LoginResults _self;
  final $Res Function(_LoginResults) _then;

/// Create a copy of LoginResults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? refreshToken = freezed,Object? isNewUser = freezed,}) {
  return _then(_LoginResults(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,isNewUser: freezed == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
