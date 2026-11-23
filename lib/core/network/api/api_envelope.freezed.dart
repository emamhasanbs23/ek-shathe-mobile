// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_envelope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiEnvelope {

 int? get code; String? get message; bool? get error;
/// Create a copy of ApiEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiEnvelopeCopyWith<ApiEnvelope> get copyWith => _$ApiEnvelopeCopyWithImpl<ApiEnvelope>(this as ApiEnvelope, _$identity);

  /// Serializes this ApiEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiEnvelope&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error);

@override
String toString() {
  return 'ApiEnvelope(code: $code, message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class $ApiEnvelopeCopyWith<$Res>  {
  factory $ApiEnvelopeCopyWith(ApiEnvelope value, $Res Function(ApiEnvelope) _then) = _$ApiEnvelopeCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, bool? error
});




}
/// @nodoc
class _$ApiEnvelopeCopyWithImpl<$Res>
    implements $ApiEnvelopeCopyWith<$Res> {
  _$ApiEnvelopeCopyWithImpl(this._self, this._then);

  final ApiEnvelope _self;
  final $Res Function(ApiEnvelope) _then;

/// Create a copy of ApiEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiEnvelope].
extension ApiEnvelopePatterns on ApiEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ApiEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ApiEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiEnvelope() when $default != null:
return $default(_that.code,_that.message,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  bool? error)  $default,) {final _that = this;
switch (_that) {
case _ApiEnvelope():
return $default(_that.code,_that.message,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  bool? error)?  $default,) {final _that = this;
switch (_that) {
case _ApiEnvelope() when $default != null:
return $default(_that.code,_that.message,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiEnvelope implements ApiEnvelope {
  const _ApiEnvelope({this.code, this.message, this.error});
  factory _ApiEnvelope.fromJson(Map<String, dynamic> json) => _$ApiEnvelopeFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  bool? error;

/// Create a copy of ApiEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiEnvelopeCopyWith<_ApiEnvelope> get copyWith => __$ApiEnvelopeCopyWithImpl<_ApiEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiEnvelope&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,error);

@override
String toString() {
  return 'ApiEnvelope(code: $code, message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ApiEnvelopeCopyWith<$Res> implements $ApiEnvelopeCopyWith<$Res> {
  factory _$ApiEnvelopeCopyWith(_ApiEnvelope value, $Res Function(_ApiEnvelope) _then) = __$ApiEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, bool? error
});




}
/// @nodoc
class __$ApiEnvelopeCopyWithImpl<$Res>
    implements _$ApiEnvelopeCopyWith<$Res> {
  __$ApiEnvelopeCopyWithImpl(this._self, this._then);

  final _ApiEnvelope _self;
  final $Res Function(_ApiEnvelope) _then;

/// Create a copy of ApiEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? error = freezed,}) {
  return _then(_ApiEnvelope(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
