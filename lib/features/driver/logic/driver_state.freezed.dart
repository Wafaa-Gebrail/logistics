// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriverState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverState()';
}


}

/// @nodoc
class $DriverStateCopyWith<$Res>  {
$DriverStateCopyWith(DriverState _, $Res Function(DriverState) __);
}


/// Adds pattern-matching-related methods to [DriverState].
extension DriverStatePatterns on DriverState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _DriverProfileLoading value)?  loading,TResult Function( _DriverProfileLoaded value)?  loaded,TResult Function( _DriverProfileError value)?  error,TResult Function( _DriverStatusLoading value)?  driverStatusLoading,TResult Function( _DriverStatusLoaded value)?  driverStatusLoaded,TResult Function( _DriverStatusError value)?  driverStatusError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DriverProfileLoading() when loading != null:
return loading(_that);case _DriverProfileLoaded() when loaded != null:
return loaded(_that);case _DriverProfileError() when error != null:
return error(_that);case _DriverStatusLoading() when driverStatusLoading != null:
return driverStatusLoading(_that);case _DriverStatusLoaded() when driverStatusLoaded != null:
return driverStatusLoaded(_that);case _DriverStatusError() when driverStatusError != null:
return driverStatusError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _DriverProfileLoading value)  loading,required TResult Function( _DriverProfileLoaded value)  loaded,required TResult Function( _DriverProfileError value)  error,required TResult Function( _DriverStatusLoading value)  driverStatusLoading,required TResult Function( _DriverStatusLoaded value)  driverStatusLoaded,required TResult Function( _DriverStatusError value)  driverStatusError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _DriverProfileLoading():
return loading(_that);case _DriverProfileLoaded():
return loaded(_that);case _DriverProfileError():
return error(_that);case _DriverStatusLoading():
return driverStatusLoading(_that);case _DriverStatusLoaded():
return driverStatusLoaded(_that);case _DriverStatusError():
return driverStatusError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _DriverProfileLoading value)?  loading,TResult? Function( _DriverProfileLoaded value)?  loaded,TResult? Function( _DriverProfileError value)?  error,TResult? Function( _DriverStatusLoading value)?  driverStatusLoading,TResult? Function( _DriverStatusLoaded value)?  driverStatusLoaded,TResult? Function( _DriverStatusError value)?  driverStatusError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DriverProfileLoading() when loading != null:
return loading(_that);case _DriverProfileLoaded() when loaded != null:
return loaded(_that);case _DriverProfileError() when error != null:
return error(_that);case _DriverStatusLoading() when driverStatusLoading != null:
return driverStatusLoading(_that);case _DriverStatusLoaded() when driverStatusLoaded != null:
return driverStatusLoaded(_that);case _DriverStatusError() when driverStatusError != null:
return driverStatusError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DriverProfile driverProfile)?  loaded,TResult Function( String error)?  error,TResult Function()?  driverStatusLoading,TResult Function( DriverStatus driverStatus)?  driverStatusLoaded,TResult Function( String error)?  driverStatusError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DriverProfileLoading() when loading != null:
return loading();case _DriverProfileLoaded() when loaded != null:
return loaded(_that.driverProfile);case _DriverProfileError() when error != null:
return error(_that.error);case _DriverStatusLoading() when driverStatusLoading != null:
return driverStatusLoading();case _DriverStatusLoaded() when driverStatusLoaded != null:
return driverStatusLoaded(_that.driverStatus);case _DriverStatusError() when driverStatusError != null:
return driverStatusError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DriverProfile driverProfile)  loaded,required TResult Function( String error)  error,required TResult Function()  driverStatusLoading,required TResult Function( DriverStatus driverStatus)  driverStatusLoaded,required TResult Function( String error)  driverStatusError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _DriverProfileLoading():
return loading();case _DriverProfileLoaded():
return loaded(_that.driverProfile);case _DriverProfileError():
return error(_that.error);case _DriverStatusLoading():
return driverStatusLoading();case _DriverStatusLoaded():
return driverStatusLoaded(_that.driverStatus);case _DriverStatusError():
return driverStatusError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DriverProfile driverProfile)?  loaded,TResult? Function( String error)?  error,TResult? Function()?  driverStatusLoading,TResult? Function( DriverStatus driverStatus)?  driverStatusLoaded,TResult? Function( String error)?  driverStatusError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DriverProfileLoading() when loading != null:
return loading();case _DriverProfileLoaded() when loaded != null:
return loaded(_that.driverProfile);case _DriverProfileError() when error != null:
return error(_that.error);case _DriverStatusLoading() when driverStatusLoading != null:
return driverStatusLoading();case _DriverStatusLoaded() when driverStatusLoaded != null:
return driverStatusLoaded(_that.driverStatus);case _DriverStatusError() when driverStatusError != null:
return driverStatusError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DriverState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverState.initial()';
}


}




/// @nodoc


class _DriverProfileLoading implements DriverState {
  const _DriverProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverState.loading()';
}


}




/// @nodoc


class _DriverProfileLoaded implements DriverState {
  const _DriverProfileLoaded(this.driverProfile);
  

 final  DriverProfile driverProfile;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileLoadedCopyWith<_DriverProfileLoaded> get copyWith => __$DriverProfileLoadedCopyWithImpl<_DriverProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileLoaded&&(identical(other.driverProfile, driverProfile) || other.driverProfile == driverProfile));
}


@override
int get hashCode => Object.hash(runtimeType,driverProfile);

@override
String toString() {
  return 'DriverState.loaded(driverProfile: $driverProfile)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileLoadedCopyWith<$Res> implements $DriverStateCopyWith<$Res> {
  factory _$DriverProfileLoadedCopyWith(_DriverProfileLoaded value, $Res Function(_DriverProfileLoaded) _then) = __$DriverProfileLoadedCopyWithImpl;
@useResult
$Res call({
 DriverProfile driverProfile
});




}
/// @nodoc
class __$DriverProfileLoadedCopyWithImpl<$Res>
    implements _$DriverProfileLoadedCopyWith<$Res> {
  __$DriverProfileLoadedCopyWithImpl(this._self, this._then);

  final _DriverProfileLoaded _self;
  final $Res Function(_DriverProfileLoaded) _then;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? driverProfile = null,}) {
  return _then(_DriverProfileLoaded(
null == driverProfile ? _self.driverProfile : driverProfile // ignore: cast_nullable_to_non_nullable
as DriverProfile,
  ));
}


}

/// @nodoc


class _DriverProfileError implements DriverState {
  const _DriverProfileError({required this.error});
  

 final  String error;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileErrorCopyWith<_DriverProfileError> get copyWith => __$DriverProfileErrorCopyWithImpl<_DriverProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DriverState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileErrorCopyWith<$Res> implements $DriverStateCopyWith<$Res> {
  factory _$DriverProfileErrorCopyWith(_DriverProfileError value, $Res Function(_DriverProfileError) _then) = __$DriverProfileErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$DriverProfileErrorCopyWithImpl<$Res>
    implements _$DriverProfileErrorCopyWith<$Res> {
  __$DriverProfileErrorCopyWithImpl(this._self, this._then);

  final _DriverProfileError _self;
  final $Res Function(_DriverProfileError) _then;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_DriverProfileError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DriverStatusLoading implements DriverState {
  const _DriverStatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverStatusLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverState.driverStatusLoading()';
}


}




/// @nodoc


class _DriverStatusLoaded implements DriverState {
  const _DriverStatusLoaded(this.driverStatus);
  

 final  DriverStatus driverStatus;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverStatusLoadedCopyWith<_DriverStatusLoaded> get copyWith => __$DriverStatusLoadedCopyWithImpl<_DriverStatusLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverStatusLoaded&&(identical(other.driverStatus, driverStatus) || other.driverStatus == driverStatus));
}


@override
int get hashCode => Object.hash(runtimeType,driverStatus);

@override
String toString() {
  return 'DriverState.driverStatusLoaded(driverStatus: $driverStatus)';
}


}

/// @nodoc
abstract mixin class _$DriverStatusLoadedCopyWith<$Res> implements $DriverStateCopyWith<$Res> {
  factory _$DriverStatusLoadedCopyWith(_DriverStatusLoaded value, $Res Function(_DriverStatusLoaded) _then) = __$DriverStatusLoadedCopyWithImpl;
@useResult
$Res call({
 DriverStatus driverStatus
});




}
/// @nodoc
class __$DriverStatusLoadedCopyWithImpl<$Res>
    implements _$DriverStatusLoadedCopyWith<$Res> {
  __$DriverStatusLoadedCopyWithImpl(this._self, this._then);

  final _DriverStatusLoaded _self;
  final $Res Function(_DriverStatusLoaded) _then;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? driverStatus = null,}) {
  return _then(_DriverStatusLoaded(
null == driverStatus ? _self.driverStatus : driverStatus // ignore: cast_nullable_to_non_nullable
as DriverStatus,
  ));
}


}

/// @nodoc


class _DriverStatusError implements DriverState {
  const _DriverStatusError({required this.error});
  

 final  String error;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverStatusErrorCopyWith<_DriverStatusError> get copyWith => __$DriverStatusErrorCopyWithImpl<_DriverStatusError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverStatusError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DriverState.driverStatusError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DriverStatusErrorCopyWith<$Res> implements $DriverStateCopyWith<$Res> {
  factory _$DriverStatusErrorCopyWith(_DriverStatusError value, $Res Function(_DriverStatusError) _then) = __$DriverStatusErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$DriverStatusErrorCopyWithImpl<$Res>
    implements _$DriverStatusErrorCopyWith<$Res> {
  __$DriverStatusErrorCopyWithImpl(this._self, this._then);

  final _DriverStatusError _self;
  final $Res Function(_DriverStatusError) _then;

/// Create a copy of DriverState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_DriverStatusError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
