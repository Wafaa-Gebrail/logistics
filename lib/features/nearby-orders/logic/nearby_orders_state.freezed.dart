// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nearby_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NearbyOrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearbyOrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState()';
}


}

/// @nodoc
class $NearbyOrdersStateCopyWith<$Res>  {
$NearbyOrdersStateCopyWith(NearbyOrdersState _, $Res Function(NearbyOrdersState) __);
}


/// Adds pattern-matching-related methods to [NearbyOrdersState].
extension NearbyOrdersStatePatterns on NearbyOrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _NearbyOrdersLoading value)?  loading,TResult Function( _NearbyOrdersLoaded value)?  loaded,TResult Function( _NearbyOrdersError value)?  error,TResult Function( _DriverLocationLoading value)?  driverLocationLoading,TResult Function( _DriverLocationLoaded value)?  driverLocationLoaded,TResult Function( _DriverLocationError value)?  driverLocationError,TResult Function( _AcceptOrderLoading value)?  acceptOrderLoading,TResult Function( _AcceptOrderSuccess value)?  acceptOrderSuccess,TResult Function( _AcceptOrderError value)?  acceptOrderError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _NearbyOrdersLoading() when loading != null:
return loading(_that);case _NearbyOrdersLoaded() when loaded != null:
return loaded(_that);case _NearbyOrdersError() when error != null:
return error(_that);case _DriverLocationLoading() when driverLocationLoading != null:
return driverLocationLoading(_that);case _DriverLocationLoaded() when driverLocationLoaded != null:
return driverLocationLoaded(_that);case _DriverLocationError() when driverLocationError != null:
return driverLocationError(_that);case _AcceptOrderLoading() when acceptOrderLoading != null:
return acceptOrderLoading(_that);case _AcceptOrderSuccess() when acceptOrderSuccess != null:
return acceptOrderSuccess(_that);case _AcceptOrderError() when acceptOrderError != null:
return acceptOrderError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _NearbyOrdersLoading value)  loading,required TResult Function( _NearbyOrdersLoaded value)  loaded,required TResult Function( _NearbyOrdersError value)  error,required TResult Function( _DriverLocationLoading value)  driverLocationLoading,required TResult Function( _DriverLocationLoaded value)  driverLocationLoaded,required TResult Function( _DriverLocationError value)  driverLocationError,required TResult Function( _AcceptOrderLoading value)  acceptOrderLoading,required TResult Function( _AcceptOrderSuccess value)  acceptOrderSuccess,required TResult Function( _AcceptOrderError value)  acceptOrderError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _NearbyOrdersLoading():
return loading(_that);case _NearbyOrdersLoaded():
return loaded(_that);case _NearbyOrdersError():
return error(_that);case _DriverLocationLoading():
return driverLocationLoading(_that);case _DriverLocationLoaded():
return driverLocationLoaded(_that);case _DriverLocationError():
return driverLocationError(_that);case _AcceptOrderLoading():
return acceptOrderLoading(_that);case _AcceptOrderSuccess():
return acceptOrderSuccess(_that);case _AcceptOrderError():
return acceptOrderError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _NearbyOrdersLoading value)?  loading,TResult? Function( _NearbyOrdersLoaded value)?  loaded,TResult? Function( _NearbyOrdersError value)?  error,TResult? Function( _DriverLocationLoading value)?  driverLocationLoading,TResult? Function( _DriverLocationLoaded value)?  driverLocationLoaded,TResult? Function( _DriverLocationError value)?  driverLocationError,TResult? Function( _AcceptOrderLoading value)?  acceptOrderLoading,TResult? Function( _AcceptOrderSuccess value)?  acceptOrderSuccess,TResult? Function( _AcceptOrderError value)?  acceptOrderError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _NearbyOrdersLoading() when loading != null:
return loading(_that);case _NearbyOrdersLoaded() when loaded != null:
return loaded(_that);case _NearbyOrdersError() when error != null:
return error(_that);case _DriverLocationLoading() when driverLocationLoading != null:
return driverLocationLoading(_that);case _DriverLocationLoaded() when driverLocationLoaded != null:
return driverLocationLoaded(_that);case _DriverLocationError() when driverLocationError != null:
return driverLocationError(_that);case _AcceptOrderLoading() when acceptOrderLoading != null:
return acceptOrderLoading(_that);case _AcceptOrderSuccess() when acceptOrderSuccess != null:
return acceptOrderSuccess(_that);case _AcceptOrderError() when acceptOrderError != null:
return acceptOrderError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( NearbyOrders nearbyOrders)?  loaded,TResult Function( String error)?  error,TResult Function()?  driverLocationLoading,TResult Function( DriverLocation driverLocation)?  driverLocationLoaded,TResult Function( String error)?  driverLocationError,TResult Function()?  acceptOrderLoading,TResult Function()?  acceptOrderSuccess,TResult Function( String error)?  acceptOrderError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _NearbyOrdersLoading() when loading != null:
return loading();case _NearbyOrdersLoaded() when loaded != null:
return loaded(_that.nearbyOrders);case _NearbyOrdersError() when error != null:
return error(_that.error);case _DriverLocationLoading() when driverLocationLoading != null:
return driverLocationLoading();case _DriverLocationLoaded() when driverLocationLoaded != null:
return driverLocationLoaded(_that.driverLocation);case _DriverLocationError() when driverLocationError != null:
return driverLocationError(_that.error);case _AcceptOrderLoading() when acceptOrderLoading != null:
return acceptOrderLoading();case _AcceptOrderSuccess() when acceptOrderSuccess != null:
return acceptOrderSuccess();case _AcceptOrderError() when acceptOrderError != null:
return acceptOrderError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( NearbyOrders nearbyOrders)  loaded,required TResult Function( String error)  error,required TResult Function()  driverLocationLoading,required TResult Function( DriverLocation driverLocation)  driverLocationLoaded,required TResult Function( String error)  driverLocationError,required TResult Function()  acceptOrderLoading,required TResult Function()  acceptOrderSuccess,required TResult Function( String error)  acceptOrderError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _NearbyOrdersLoading():
return loading();case _NearbyOrdersLoaded():
return loaded(_that.nearbyOrders);case _NearbyOrdersError():
return error(_that.error);case _DriverLocationLoading():
return driverLocationLoading();case _DriverLocationLoaded():
return driverLocationLoaded(_that.driverLocation);case _DriverLocationError():
return driverLocationError(_that.error);case _AcceptOrderLoading():
return acceptOrderLoading();case _AcceptOrderSuccess():
return acceptOrderSuccess();case _AcceptOrderError():
return acceptOrderError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( NearbyOrders nearbyOrders)?  loaded,TResult? Function( String error)?  error,TResult? Function()?  driverLocationLoading,TResult? Function( DriverLocation driverLocation)?  driverLocationLoaded,TResult? Function( String error)?  driverLocationError,TResult? Function()?  acceptOrderLoading,TResult? Function()?  acceptOrderSuccess,TResult? Function( String error)?  acceptOrderError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _NearbyOrdersLoading() when loading != null:
return loading();case _NearbyOrdersLoaded() when loaded != null:
return loaded(_that.nearbyOrders);case _NearbyOrdersError() when error != null:
return error(_that.error);case _DriverLocationLoading() when driverLocationLoading != null:
return driverLocationLoading();case _DriverLocationLoaded() when driverLocationLoaded != null:
return driverLocationLoaded(_that.driverLocation);case _DriverLocationError() when driverLocationError != null:
return driverLocationError(_that.error);case _AcceptOrderLoading() when acceptOrderLoading != null:
return acceptOrderLoading();case _AcceptOrderSuccess() when acceptOrderSuccess != null:
return acceptOrderSuccess();case _AcceptOrderError() when acceptOrderError != null:
return acceptOrderError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements NearbyOrdersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState.initial()';
}


}




/// @nodoc


class _NearbyOrdersLoading implements NearbyOrdersState {
  const _NearbyOrdersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NearbyOrdersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState.loading()';
}


}




/// @nodoc


class _NearbyOrdersLoaded implements NearbyOrdersState {
  const _NearbyOrdersLoaded(this.nearbyOrders);
  

 final  NearbyOrders nearbyOrders;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NearbyOrdersLoadedCopyWith<_NearbyOrdersLoaded> get copyWith => __$NearbyOrdersLoadedCopyWithImpl<_NearbyOrdersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NearbyOrdersLoaded&&(identical(other.nearbyOrders, nearbyOrders) || other.nearbyOrders == nearbyOrders));
}


@override
int get hashCode => Object.hash(runtimeType,nearbyOrders);

@override
String toString() {
  return 'NearbyOrdersState.loaded(nearbyOrders: $nearbyOrders)';
}


}

/// @nodoc
abstract mixin class _$NearbyOrdersLoadedCopyWith<$Res> implements $NearbyOrdersStateCopyWith<$Res> {
  factory _$NearbyOrdersLoadedCopyWith(_NearbyOrdersLoaded value, $Res Function(_NearbyOrdersLoaded) _then) = __$NearbyOrdersLoadedCopyWithImpl;
@useResult
$Res call({
 NearbyOrders nearbyOrders
});




}
/// @nodoc
class __$NearbyOrdersLoadedCopyWithImpl<$Res>
    implements _$NearbyOrdersLoadedCopyWith<$Res> {
  __$NearbyOrdersLoadedCopyWithImpl(this._self, this._then);

  final _NearbyOrdersLoaded _self;
  final $Res Function(_NearbyOrdersLoaded) _then;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nearbyOrders = null,}) {
  return _then(_NearbyOrdersLoaded(
null == nearbyOrders ? _self.nearbyOrders : nearbyOrders // ignore: cast_nullable_to_non_nullable
as NearbyOrders,
  ));
}


}

/// @nodoc


class _NearbyOrdersError implements NearbyOrdersState {
  const _NearbyOrdersError({required this.error});
  

 final  String error;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NearbyOrdersErrorCopyWith<_NearbyOrdersError> get copyWith => __$NearbyOrdersErrorCopyWithImpl<_NearbyOrdersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NearbyOrdersError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'NearbyOrdersState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$NearbyOrdersErrorCopyWith<$Res> implements $NearbyOrdersStateCopyWith<$Res> {
  factory _$NearbyOrdersErrorCopyWith(_NearbyOrdersError value, $Res Function(_NearbyOrdersError) _then) = __$NearbyOrdersErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$NearbyOrdersErrorCopyWithImpl<$Res>
    implements _$NearbyOrdersErrorCopyWith<$Res> {
  __$NearbyOrdersErrorCopyWithImpl(this._self, this._then);

  final _NearbyOrdersError _self;
  final $Res Function(_NearbyOrdersError) _then;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_NearbyOrdersError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DriverLocationLoading implements NearbyOrdersState {
  const _DriverLocationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLocationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState.driverLocationLoading()';
}


}




/// @nodoc


class _DriverLocationLoaded implements NearbyOrdersState {
  const _DriverLocationLoaded(this.driverLocation);
  

 final  DriverLocation driverLocation;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverLocationLoadedCopyWith<_DriverLocationLoaded> get copyWith => __$DriverLocationLoadedCopyWithImpl<_DriverLocationLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLocationLoaded&&(identical(other.driverLocation, driverLocation) || other.driverLocation == driverLocation));
}


@override
int get hashCode => Object.hash(runtimeType,driverLocation);

@override
String toString() {
  return 'NearbyOrdersState.driverLocationLoaded(driverLocation: $driverLocation)';
}


}

/// @nodoc
abstract mixin class _$DriverLocationLoadedCopyWith<$Res> implements $NearbyOrdersStateCopyWith<$Res> {
  factory _$DriverLocationLoadedCopyWith(_DriverLocationLoaded value, $Res Function(_DriverLocationLoaded) _then) = __$DriverLocationLoadedCopyWithImpl;
@useResult
$Res call({
 DriverLocation driverLocation
});




}
/// @nodoc
class __$DriverLocationLoadedCopyWithImpl<$Res>
    implements _$DriverLocationLoadedCopyWith<$Res> {
  __$DriverLocationLoadedCopyWithImpl(this._self, this._then);

  final _DriverLocationLoaded _self;
  final $Res Function(_DriverLocationLoaded) _then;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? driverLocation = null,}) {
  return _then(_DriverLocationLoaded(
null == driverLocation ? _self.driverLocation : driverLocation // ignore: cast_nullable_to_non_nullable
as DriverLocation,
  ));
}


}

/// @nodoc


class _DriverLocationError implements NearbyOrdersState {
  const _DriverLocationError({required this.error});
  

 final  String error;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverLocationErrorCopyWith<_DriverLocationError> get copyWith => __$DriverLocationErrorCopyWithImpl<_DriverLocationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLocationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'NearbyOrdersState.driverLocationError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DriverLocationErrorCopyWith<$Res> implements $NearbyOrdersStateCopyWith<$Res> {
  factory _$DriverLocationErrorCopyWith(_DriverLocationError value, $Res Function(_DriverLocationError) _then) = __$DriverLocationErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$DriverLocationErrorCopyWithImpl<$Res>
    implements _$DriverLocationErrorCopyWith<$Res> {
  __$DriverLocationErrorCopyWithImpl(this._self, this._then);

  final _DriverLocationError _self;
  final $Res Function(_DriverLocationError) _then;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_DriverLocationError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AcceptOrderLoading implements NearbyOrdersState {
  const _AcceptOrderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptOrderLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState.acceptOrderLoading()';
}


}




/// @nodoc


class _AcceptOrderSuccess implements NearbyOrdersState {
  const _AcceptOrderSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptOrderSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearbyOrdersState.acceptOrderSuccess()';
}


}




/// @nodoc


class _AcceptOrderError implements NearbyOrdersState {
  const _AcceptOrderError({required this.error});
  

 final  String error;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptOrderErrorCopyWith<_AcceptOrderError> get copyWith => __$AcceptOrderErrorCopyWithImpl<_AcceptOrderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptOrderError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'NearbyOrdersState.acceptOrderError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$AcceptOrderErrorCopyWith<$Res> implements $NearbyOrdersStateCopyWith<$Res> {
  factory _$AcceptOrderErrorCopyWith(_AcceptOrderError value, $Res Function(_AcceptOrderError) _then) = __$AcceptOrderErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$AcceptOrderErrorCopyWithImpl<$Res>
    implements _$AcceptOrderErrorCopyWith<$Res> {
  __$AcceptOrderErrorCopyWithImpl(this._self, this._then);

  final _AcceptOrderError _self;
  final $Res Function(_AcceptOrderError) _then;

/// Create a copy of NearbyOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_AcceptOrderError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
