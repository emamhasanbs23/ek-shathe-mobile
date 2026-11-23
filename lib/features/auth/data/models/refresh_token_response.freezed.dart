// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshTokenResponse {

 int? get code; String? get message; bool? get error; RefreshTokenResults? get results;
/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenResponseCopyWith<RefreshTokenResponse> get copyWith => _$RefreshTokenResponseCopyWithImpl<RefreshTokenResponse>(this as RefreshTokenResponse, _$identity);

  /// Serializes this RefreshTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'RefreshTokenResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenResponseCopyWith<$Res>  {
  factory $RefreshTokenResponseCopyWith(RefreshTokenResponse value, $Res Function(RefreshTokenResponse) _then) = _$RefreshTokenResponseCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, bool? error, RefreshTokenResults? results
});


$RefreshTokenResultsCopyWith<$Res>? get results;

}
/// @nodoc
class _$RefreshTokenResponseCopyWithImpl<$Res>
    implements $RefreshTokenResponseCopyWith<$Res> {
  _$RefreshTokenResponseCopyWithImpl(this._self, this._then);

  final RefreshTokenResponse _self;
  final $Res Function(RefreshTokenResponse) _then;

/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as RefreshTokenResults?,
  ));
}
/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshTokenResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $RefreshTokenResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// Adds pattern-matching-related methods to [RefreshTokenResponse].
extension RefreshTokenResponsePatterns on RefreshTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  RefreshTokenResults? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  RefreshTokenResults? results)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  bool? error,  RefreshTokenResults? results)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResponse() when $default != null:
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshTokenResponse implements RefreshTokenResponse {
  const _RefreshTokenResponse({this.code, this.message, this.error, this.results});
  factory _RefreshTokenResponse.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  bool? error;
@override final  RefreshTokenResults? results;

/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenResponseCopyWith<_RefreshTokenResponse> get copyWith => __$RefreshTokenResponseCopyWithImpl<_RefreshTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'RefreshTokenResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenResponseCopyWith<$Res> implements $RefreshTokenResponseCopyWith<$Res> {
  factory _$RefreshTokenResponseCopyWith(_RefreshTokenResponse value, $Res Function(_RefreshTokenResponse) _then) = __$RefreshTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, bool? error, RefreshTokenResults? results
});


@override $RefreshTokenResultsCopyWith<$Res>? get results;

}
/// @nodoc
class __$RefreshTokenResponseCopyWithImpl<$Res>
    implements _$RefreshTokenResponseCopyWith<$Res> {
  __$RefreshTokenResponseCopyWithImpl(this._self, this._then);

  final _RefreshTokenResponse _self;
  final $Res Function(_RefreshTokenResponse) _then;

/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_RefreshTokenResponse(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as RefreshTokenResults?,
  ));
}

/// Create a copy of RefreshTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshTokenResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $RefreshTokenResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// @nodoc
mixin _$RefreshTokenResults {

 String? get message; String? get accessToken; String? get refreshToken;
/// Create a copy of RefreshTokenResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenResultsCopyWith<RefreshTokenResults> get copyWith => _$RefreshTokenResultsCopyWithImpl<RefreshTokenResults>(this as RefreshTokenResults, _$identity);

  /// Serializes this RefreshTokenResults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenResults&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken);

@override
String toString() {
  return 'RefreshTokenResults(message: $message, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenResultsCopyWith<$Res>  {
  factory $RefreshTokenResultsCopyWith(RefreshTokenResults value, $Res Function(RefreshTokenResults) _then) = _$RefreshTokenResultsCopyWithImpl;
@useResult
$Res call({
 String? message, String? accessToken, String? refreshToken
});




}
/// @nodoc
class _$RefreshTokenResultsCopyWithImpl<$Res>
    implements $RefreshTokenResultsCopyWith<$Res> {
  _$RefreshTokenResultsCopyWithImpl(this._self, this._then);

  final RefreshTokenResults _self;
  final $Res Function(RefreshTokenResults) _then;

/// Create a copy of RefreshTokenResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenResults].
extension RefreshTokenResultsPatterns on RefreshTokenResults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenResults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenResults() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenResults value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResults():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenResults value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResults() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? accessToken,  String? refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenResults() when $default != null:
return $default(_that.message,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? accessToken,  String? refreshToken)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResults():
return $default(_that.message,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? accessToken,  String? refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResults() when $default != null:
return $default(_that.message,_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshTokenResults implements RefreshTokenResults {
  const _RefreshTokenResults({this.message, this.accessToken, this.refreshToken});
  factory _RefreshTokenResults.fromJson(Map<String, dynamic> json) => _$RefreshTokenResultsFromJson(json);

@override final  String? message;
@override final  String? accessToken;
@override final  String? refreshToken;

/// Create a copy of RefreshTokenResults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenResultsCopyWith<_RefreshTokenResults> get copyWith => __$RefreshTokenResultsCopyWithImpl<_RefreshTokenResults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshTokenResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenResults&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken);

@override
String toString() {
  return 'RefreshTokenResults(message: $message, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenResultsCopyWith<$Res> implements $RefreshTokenResultsCopyWith<$Res> {
  factory _$RefreshTokenResultsCopyWith(_RefreshTokenResults value, $Res Function(_RefreshTokenResults) _then) = __$RefreshTokenResultsCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? accessToken, String? refreshToken
});




}
/// @nodoc
class __$RefreshTokenResultsCopyWithImpl<$Res>
    implements _$RefreshTokenResultsCopyWith<$Res> {
  __$RefreshTokenResultsCopyWithImpl(this._self, this._then);

  final _RefreshTokenResults _self;
  final $Res Function(_RefreshTokenResults) _then;

/// Create a copy of RefreshTokenResults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_RefreshTokenResults(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
