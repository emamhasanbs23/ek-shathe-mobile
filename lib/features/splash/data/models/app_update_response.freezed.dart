// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUpdateResponse {

 int? get code; String? get message; bool? get error; AppUpdateResults? get results;
/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUpdateResponseCopyWith<AppUpdateResponse> get copyWith => _$AppUpdateResponseCopyWithImpl<AppUpdateResponse>(this as AppUpdateResponse, _$identity);

  /// Serializes this AppUpdateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpdateResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'AppUpdateResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class $AppUpdateResponseCopyWith<$Res>  {
  factory $AppUpdateResponseCopyWith(AppUpdateResponse value, $Res Function(AppUpdateResponse) _then) = _$AppUpdateResponseCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, bool? error, AppUpdateResults? results
});


$AppUpdateResultsCopyWith<$Res>? get results;

}
/// @nodoc
class _$AppUpdateResponseCopyWithImpl<$Res>
    implements $AppUpdateResponseCopyWith<$Res> {
  _$AppUpdateResponseCopyWithImpl(this._self, this._then);

  final AppUpdateResponse _self;
  final $Res Function(AppUpdateResponse) _then;

/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as AppUpdateResults?,
  ));
}
/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUpdateResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $AppUpdateResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppUpdateResponse].
extension AppUpdateResponsePatterns on AppUpdateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUpdateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUpdateResponse value)  $default,){
final _that = this;
switch (_that) {
case _AppUpdateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUpdateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AppUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  AppUpdateResults? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error,  AppUpdateResults? results)  $default,) {final _that = this;
switch (_that) {
case _AppUpdateResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  bool? error,  AppUpdateResults? results)?  $default,) {final _that = this;
switch (_that) {
case _AppUpdateResponse() when $default != null:
return $default(_that.code,_that.message,_that.error,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUpdateResponse implements AppUpdateResponse {
  const _AppUpdateResponse({this.code, this.message, this.error, this.results});
  factory _AppUpdateResponse.fromJson(Map<String, dynamic> json) => _$AppUpdateResponseFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  bool? error;
@override final  AppUpdateResults? results;

/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpdateResponseCopyWith<_AppUpdateResponse> get copyWith => __$AppUpdateResponseCopyWithImpl<_AppUpdateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUpdateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpdateResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.results, results) || other.results == results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error,results);

@override
String toString() {
  return 'AppUpdateResponse(code: $code, message: $message, error: $error, results: $results)';
}


}

/// @nodoc
abstract mixin class _$AppUpdateResponseCopyWith<$Res> implements $AppUpdateResponseCopyWith<$Res> {
  factory _$AppUpdateResponseCopyWith(_AppUpdateResponse value, $Res Function(_AppUpdateResponse) _then) = __$AppUpdateResponseCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, bool? error, AppUpdateResults? results
});


@override $AppUpdateResultsCopyWith<$Res>? get results;

}
/// @nodoc
class __$AppUpdateResponseCopyWithImpl<$Res>
    implements _$AppUpdateResponseCopyWith<$Res> {
  __$AppUpdateResponseCopyWithImpl(this._self, this._then);

  final _AppUpdateResponse _self;
  final $Res Function(_AppUpdateResponse) _then;

/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,Object? results = freezed,}) {
  return _then(_AppUpdateResponse(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as AppUpdateResults?,
  ));
}

/// Create a copy of AppUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUpdateResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $AppUpdateResultsCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}


/// @nodoc
mixin _$AppUpdateResults {

 AppUpdateData? get data;
/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUpdateResultsCopyWith<AppUpdateResults> get copyWith => _$AppUpdateResultsCopyWithImpl<AppUpdateResults>(this as AppUpdateResults, _$identity);

  /// Serializes this AppUpdateResults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpdateResults&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AppUpdateResults(data: $data)';
}


}

/// @nodoc
abstract mixin class $AppUpdateResultsCopyWith<$Res>  {
  factory $AppUpdateResultsCopyWith(AppUpdateResults value, $Res Function(AppUpdateResults) _then) = _$AppUpdateResultsCopyWithImpl;
@useResult
$Res call({
 AppUpdateData? data
});


$AppUpdateDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AppUpdateResultsCopyWithImpl<$Res>
    implements $AppUpdateResultsCopyWith<$Res> {
  _$AppUpdateResultsCopyWithImpl(this._self, this._then);

  final AppUpdateResults _self;
  final $Res Function(AppUpdateResults) _then;

/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppUpdateData?,
  ));
}
/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUpdateDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AppUpdateDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppUpdateResults].
extension AppUpdateResultsPatterns on AppUpdateResults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUpdateResults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUpdateResults() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUpdateResults value)  $default,){
final _that = this;
switch (_that) {
case _AppUpdateResults():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUpdateResults value)?  $default,){
final _that = this;
switch (_that) {
case _AppUpdateResults() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppUpdateData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUpdateResults() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppUpdateData? data)  $default,) {final _that = this;
switch (_that) {
case _AppUpdateResults():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppUpdateData? data)?  $default,) {final _that = this;
switch (_that) {
case _AppUpdateResults() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUpdateResults implements AppUpdateResults {
  const _AppUpdateResults({this.data});
  factory _AppUpdateResults.fromJson(Map<String, dynamic> json) => _$AppUpdateResultsFromJson(json);

@override final  AppUpdateData? data;

/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpdateResultsCopyWith<_AppUpdateResults> get copyWith => __$AppUpdateResultsCopyWithImpl<_AppUpdateResults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUpdateResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpdateResults&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AppUpdateResults(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AppUpdateResultsCopyWith<$Res> implements $AppUpdateResultsCopyWith<$Res> {
  factory _$AppUpdateResultsCopyWith(_AppUpdateResults value, $Res Function(_AppUpdateResults) _then) = __$AppUpdateResultsCopyWithImpl;
@override @useResult
$Res call({
 AppUpdateData? data
});


@override $AppUpdateDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AppUpdateResultsCopyWithImpl<$Res>
    implements _$AppUpdateResultsCopyWith<$Res> {
  __$AppUpdateResultsCopyWithImpl(this._self, this._then);

  final _AppUpdateResults _self;
  final $Res Function(_AppUpdateResults) _then;

/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_AppUpdateResults(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppUpdateData?,
  ));
}

/// Create a copy of AppUpdateResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUpdateDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AppUpdateDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AppUpdateData {

 String? get updateStatus; String? get currentVersion; String? get latestVersion; String? get minSupportedVersion;
/// Create a copy of AppUpdateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUpdateDataCopyWith<AppUpdateData> get copyWith => _$AppUpdateDataCopyWithImpl<AppUpdateData>(this as AppUpdateData, _$identity);

  /// Serializes this AppUpdateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpdateData&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.minSupportedVersion, minSupportedVersion) || other.minSupportedVersion == minSupportedVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updateStatus,currentVersion,latestVersion,minSupportedVersion);

@override
String toString() {
  return 'AppUpdateData(updateStatus: $updateStatus, currentVersion: $currentVersion, latestVersion: $latestVersion, minSupportedVersion: $minSupportedVersion)';
}


}

/// @nodoc
abstract mixin class $AppUpdateDataCopyWith<$Res>  {
  factory $AppUpdateDataCopyWith(AppUpdateData value, $Res Function(AppUpdateData) _then) = _$AppUpdateDataCopyWithImpl;
@useResult
$Res call({
 String? updateStatus, String? currentVersion, String? latestVersion, String? minSupportedVersion
});




}
/// @nodoc
class _$AppUpdateDataCopyWithImpl<$Res>
    implements $AppUpdateDataCopyWith<$Res> {
  _$AppUpdateDataCopyWithImpl(this._self, this._then);

  final AppUpdateData _self;
  final $Res Function(AppUpdateData) _then;

/// Create a copy of AppUpdateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updateStatus = freezed,Object? currentVersion = freezed,Object? latestVersion = freezed,Object? minSupportedVersion = freezed,}) {
  return _then(_self.copyWith(
updateStatus: freezed == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as String?,currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String?,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String?,minSupportedVersion: freezed == minSupportedVersion ? _self.minSupportedVersion : minSupportedVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUpdateData].
extension AppUpdateDataPatterns on AppUpdateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUpdateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUpdateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUpdateData value)  $default,){
final _that = this;
switch (_that) {
case _AppUpdateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUpdateData value)?  $default,){
final _that = this;
switch (_that) {
case _AppUpdateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? updateStatus,  String? currentVersion,  String? latestVersion,  String? minSupportedVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUpdateData() when $default != null:
return $default(_that.updateStatus,_that.currentVersion,_that.latestVersion,_that.minSupportedVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? updateStatus,  String? currentVersion,  String? latestVersion,  String? minSupportedVersion)  $default,) {final _that = this;
switch (_that) {
case _AppUpdateData():
return $default(_that.updateStatus,_that.currentVersion,_that.latestVersion,_that.minSupportedVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? updateStatus,  String? currentVersion,  String? latestVersion,  String? minSupportedVersion)?  $default,) {final _that = this;
switch (_that) {
case _AppUpdateData() when $default != null:
return $default(_that.updateStatus,_that.currentVersion,_that.latestVersion,_that.minSupportedVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUpdateData implements AppUpdateData {
  const _AppUpdateData({this.updateStatus, this.currentVersion, this.latestVersion, this.minSupportedVersion});
  factory _AppUpdateData.fromJson(Map<String, dynamic> json) => _$AppUpdateDataFromJson(json);

@override final  String? updateStatus;
@override final  String? currentVersion;
@override final  String? latestVersion;
@override final  String? minSupportedVersion;

/// Create a copy of AppUpdateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpdateDataCopyWith<_AppUpdateData> get copyWith => __$AppUpdateDataCopyWithImpl<_AppUpdateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUpdateDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpdateData&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.minSupportedVersion, minSupportedVersion) || other.minSupportedVersion == minSupportedVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updateStatus,currentVersion,latestVersion,minSupportedVersion);

@override
String toString() {
  return 'AppUpdateData(updateStatus: $updateStatus, currentVersion: $currentVersion, latestVersion: $latestVersion, minSupportedVersion: $minSupportedVersion)';
}


}

/// @nodoc
abstract mixin class _$AppUpdateDataCopyWith<$Res> implements $AppUpdateDataCopyWith<$Res> {
  factory _$AppUpdateDataCopyWith(_AppUpdateData value, $Res Function(_AppUpdateData) _then) = __$AppUpdateDataCopyWithImpl;
@override @useResult
$Res call({
 String? updateStatus, String? currentVersion, String? latestVersion, String? minSupportedVersion
});




}
/// @nodoc
class __$AppUpdateDataCopyWithImpl<$Res>
    implements _$AppUpdateDataCopyWith<$Res> {
  __$AppUpdateDataCopyWithImpl(this._self, this._then);

  final _AppUpdateData _self;
  final $Res Function(_AppUpdateData) _then;

/// Create a copy of AppUpdateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updateStatus = freezed,Object? currentVersion = freezed,Object? latestVersion = freezed,Object? minSupportedVersion = freezed,}) {
  return _then(_AppUpdateData(
updateStatus: freezed == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as String?,currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String?,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String?,minSupportedVersion: freezed == minSupportedVersion ? _self.minSupportedVersion : minSupportedVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
