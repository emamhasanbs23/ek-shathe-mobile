// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_me_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserMeResponse {

 int? get code; String? get message; bool? get error; UserMeResults? get results;
/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMeResponseCopyWith<UserMeResponse> get copyWith => _$UserMeResponseCopyWithImpl<UserMeResponse>(this as UserMeResponse, _$identity);

  /// Serializes this UserMeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMeResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'UserMeResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class $UserMeResponseCopyWith<$Res>  {
  factory $UserMeResponseCopyWith(UserMeResponse value, $Res Function(UserMeResponse) _then) = _$UserMeResponseCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, bool? error, UserMeResults? results
});


$UserMeResultsCopyWith<$Res>? get results;

}
/// @nodoc
class _$UserMeResponseCopyWithImpl<$Res>
    implements $UserMeResponseCopyWith<$Res> {
  _$UserMeResponseCopyWithImpl(this._self, this._then);

  final UserMeResponse _self;
  final $Res Function(UserMeResponse) _then;

/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as UserMeResults?,
  ));
}
/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMeResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $UserMeResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserMeResponse].
extension UserMeResponsePatterns on UserMeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMeResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserMeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserMeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  UserMeResults? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  UserMeResults? results)  $default,) {final _that = this;
switch (_that) {
case _UserMeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  bool? error,  UserMeResults? results)?  $default,) {final _that = this;
switch (_that) {
case _UserMeResponse() when $default != null:
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserMeResponse implements UserMeResponse {
  const _UserMeResponse({this.code, this.message, this.error, this.results});
  factory _UserMeResponse.fromJson(Map<String, dynamic> json) => _$UserMeResponseFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  bool? error;
@override final  UserMeResults? results;

/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMeResponseCopyWith<_UserMeResponse> get copyWith => __$UserMeResponseCopyWithImpl<_UserMeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMeResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'UserMeResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class _$UserMeResponseCopyWith<$Res> implements $UserMeResponseCopyWith<$Res> {
  factory _$UserMeResponseCopyWith(_UserMeResponse value, $Res Function(_UserMeResponse) _then) = __$UserMeResponseCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, bool? error, UserMeResults? results
});


@override $UserMeResultsCopyWith<$Res>? get results;

}
/// @nodoc
class __$UserMeResponseCopyWithImpl<$Res>
    implements _$UserMeResponseCopyWith<$Res> {
  __$UserMeResponseCopyWithImpl(this._self, this._then);

  final _UserMeResponse _self;
  final $Res Function(_UserMeResponse) _then;

/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_UserMeResponse(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as UserMeResults?,
  ));
}

/// Create a copy of UserMeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMeResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $UserMeResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// @nodoc
mixin _$UserMeResults {

 UserMeData? get data;
/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMeResultsCopyWith<UserMeResults> get copyWith => _$UserMeResultsCopyWithImpl<UserMeResults>(this as UserMeResults, _$identity);

  /// Serializes this UserMeResults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMeResults&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserMeResults(data: $data)';
}


}

/// @nodoc
abstract mixin class $UserMeResultsCopyWith<$Res>  {
  factory $UserMeResultsCopyWith(UserMeResults value, $Res Function(UserMeResults) _then) = _$UserMeResultsCopyWithImpl;
@useResult
$Res call({
 UserMeData? data
});


$UserMeDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserMeResultsCopyWithImpl<$Res>
    implements $UserMeResultsCopyWith<$Res> {
  _$UserMeResultsCopyWithImpl(this._self, this._then);

  final UserMeResults _self;
  final $Res Function(UserMeResults) _then;

/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserMeData?,
  ));
}
/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserMeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserMeResults].
extension UserMeResultsPatterns on UserMeResults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMeResults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMeResults() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMeResults value)  $default,){
final _that = this;
switch (_that) {
case _UserMeResults():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMeResults value)?  $default,){
final _that = this;
switch (_that) {
case _UserMeResults() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserMeData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMeResults() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserMeData? data)  $default,) {final _that = this;
switch (_that) {
case _UserMeResults():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserMeData? data)?  $default,) {final _that = this;
switch (_that) {
case _UserMeResults() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserMeResults implements UserMeResults {
  const _UserMeResults({this.data});
  factory _UserMeResults.fromJson(Map<String, dynamic> json) => _$UserMeResultsFromJson(json);

@override final  UserMeData? data;

/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMeResultsCopyWith<_UserMeResults> get copyWith => __$UserMeResultsCopyWithImpl<_UserMeResults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMeResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMeResults&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserMeResults(data: $data)';
}


}

/// @nodoc
abstract mixin class _$UserMeResultsCopyWith<$Res> implements $UserMeResultsCopyWith<$Res> {
  factory _$UserMeResultsCopyWith(_UserMeResults value, $Res Function(_UserMeResults) _then) = __$UserMeResultsCopyWithImpl;
@override @useResult
$Res call({
 UserMeData? data
});


@override $UserMeDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$UserMeResultsCopyWithImpl<$Res>
    implements _$UserMeResultsCopyWith<$Res> {
  __$UserMeResultsCopyWithImpl(this._self, this._then);

  final _UserMeResults _self;
  final $Res Function(_UserMeResults) _then;

/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_UserMeResults(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserMeData?,
  ));
}

/// Create a copy of UserMeResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserMeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserMeData {

 String? get email; String? get userId; String? get firstname; String? get lastname; String? get username; String? get name;
/// Create a copy of UserMeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMeDataCopyWith<UserMeData> get copyWith => _$UserMeDataCopyWithImpl<UserMeData>(this as UserMeData, _$identity);

  /// Serializes this UserMeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMeData&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,userId,firstname,lastname,username,name);

@override
String toString() {
  return 'UserMeData(email: $email, userId: $userId, firstname: $firstname, lastname: $lastname, username: $username, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserMeDataCopyWith<$Res>  {
  factory $UserMeDataCopyWith(UserMeData value, $Res Function(UserMeData) _then) = _$UserMeDataCopyWithImpl;
@useResult
$Res call({
 String? email, String? userId, String? firstname, String? lastname, String? username, String? name
});




}
/// @nodoc
class _$UserMeDataCopyWithImpl<$Res>
    implements $UserMeDataCopyWith<$Res> {
  _$UserMeDataCopyWithImpl(this._self, this._then);

  final UserMeData _self;
  final $Res Function(UserMeData) _then;

/// Create a copy of UserMeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? userId = freezed,Object? firstname = freezed,Object? lastname = freezed,Object? username = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserMeData].
extension UserMeDataPatterns on UserMeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMeData value)  $default,){
final _that = this;
switch (_that) {
case _UserMeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMeData value)?  $default,){
final _that = this;
switch (_that) {
case _UserMeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? userId,  String? firstname,  String? lastname,  String? username,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMeData() when $default != null:
return $default(_that.email,_that.userId,_that.firstname,_that.lastname,_that.username,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? userId,  String? firstname,  String? lastname,  String? username,  String? name)  $default,) {final _that = this;
switch (_that) {
case _UserMeData():
return $default(_that.email,_that.userId,_that.firstname,_that.lastname,_that.username,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? userId,  String? firstname,  String? lastname,  String? username,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _UserMeData() when $default != null:
return $default(_that.email,_that.userId,_that.firstname,_that.lastname,_that.username,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserMeData implements UserMeData {
  const _UserMeData({this.email, this.userId, this.firstname, this.lastname, this.username, this.name});
  factory _UserMeData.fromJson(Map<String, dynamic> json) => _$UserMeDataFromJson(json);

@override final  String? email;
@override final  String? userId;
@override final  String? firstname;
@override final  String? lastname;
@override final  String? username;
@override final  String? name;

/// Create a copy of UserMeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMeDataCopyWith<_UserMeData> get copyWith => __$UserMeDataCopyWithImpl<_UserMeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMeData&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,userId,firstname,lastname,username,name);

@override
String toString() {
  return 'UserMeData(email: $email, userId: $userId, firstname: $firstname, lastname: $lastname, username: $username, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserMeDataCopyWith<$Res> implements $UserMeDataCopyWith<$Res> {
  factory _$UserMeDataCopyWith(_UserMeData value, $Res Function(_UserMeData) _then) = __$UserMeDataCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? userId, String? firstname, String? lastname, String? username, String? name
});




}
/// @nodoc
class __$UserMeDataCopyWithImpl<$Res>
    implements _$UserMeDataCopyWith<$Res> {
  __$UserMeDataCopyWithImpl(this._self, this._then);

  final _UserMeData _self;
  final $Res Function(_UserMeData) _then;

/// Create a copy of UserMeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? userId = freezed,Object? firstname = freezed,Object? lastname = freezed,Object? username = freezed,Object? name = freezed,}) {
  return _then(_UserMeData(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
