// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriverOrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverOrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverOrdersState()';
}


}

/// @nodoc
class $DriverOrdersStateCopyWith<$Res>  {
$DriverOrdersStateCopyWith(DriverOrdersState _, $Res Function(DriverOrdersState) __);
}


/// Adds pattern-matching-related methods to [DriverOrdersState].
extension DriverOrdersStatePatterns on DriverOrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,TResult Function( _ProofLoading value)?  proofLoading,TResult Function( _ProofSuccess value)?  proofSuccess,TResult Function( _ProofError value)?  proofError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _ProofLoading() when proofLoading != null:
return proofLoading(_that);case _ProofSuccess() when proofSuccess != null:
return proofSuccess(_that);case _ProofError() when proofError != null:
return proofError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,required TResult Function( _ProofLoading value)  proofLoading,required TResult Function( _ProofSuccess value)  proofSuccess,required TResult Function( _ProofError value)  proofError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _ProofLoading():
return proofLoading(_that);case _ProofSuccess():
return proofSuccess(_that);case _ProofError():
return proofError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,TResult? Function( _ProofLoading value)?  proofLoading,TResult? Function( _ProofSuccess value)?  proofSuccess,TResult? Function( _ProofError value)?  proofError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _ProofLoading() when proofLoading != null:
return proofLoading(_that);case _ProofSuccess() when proofSuccess != null:
return proofSuccess(_that);case _ProofError() when proofError != null:
return proofError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( NearbyOrders driverOrders)?  loaded,TResult Function( String error)?  error,TResult Function()?  proofLoading,TResult Function( String message)?  proofSuccess,TResult Function( String error)?  proofError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.driverOrders);case _Error() when error != null:
return error(_that.error);case _ProofLoading() when proofLoading != null:
return proofLoading();case _ProofSuccess() when proofSuccess != null:
return proofSuccess(_that.message);case _ProofError() when proofError != null:
return proofError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( NearbyOrders driverOrders)  loaded,required TResult Function( String error)  error,required TResult Function()  proofLoading,required TResult Function( String message)  proofSuccess,required TResult Function( String error)  proofError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.driverOrders);case _Error():
return error(_that.error);case _ProofLoading():
return proofLoading();case _ProofSuccess():
return proofSuccess(_that.message);case _ProofError():
return proofError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( NearbyOrders driverOrders)?  loaded,TResult? Function( String error)?  error,TResult? Function()?  proofLoading,TResult? Function( String message)?  proofSuccess,TResult? Function( String error)?  proofError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.driverOrders);case _Error() when error != null:
return error(_that.error);case _ProofLoading() when proofLoading != null:
return proofLoading();case _ProofSuccess() when proofSuccess != null:
return proofSuccess(_that.message);case _ProofError() when proofError != null:
return proofError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DriverOrdersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverOrdersState.initial()';
}


}




/// @nodoc


class _Loading implements DriverOrdersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverOrdersState.loading()';
}


}




/// @nodoc


class _Loaded implements DriverOrdersState {
  const _Loaded(this.driverOrders);
  

 final  NearbyOrders driverOrders;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.driverOrders, driverOrders) || other.driverOrders == driverOrders));
}


@override
int get hashCode => Object.hash(runtimeType,driverOrders);

@override
String toString() {
  return 'DriverOrdersState.loaded(driverOrders: $driverOrders)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $DriverOrdersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 NearbyOrders driverOrders
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? driverOrders = null,}) {
  return _then(_Loaded(
null == driverOrders ? _self.driverOrders : driverOrders // ignore: cast_nullable_to_non_nullable
as NearbyOrders,
  ));
}


}

/// @nodoc


class _Error implements DriverOrdersState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DriverOrdersState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $DriverOrdersStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ProofLoading implements DriverOrdersState {
  const _ProofLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProofLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DriverOrdersState.proofLoading()';
}


}




/// @nodoc


class _ProofSuccess implements DriverOrdersState {
  const _ProofSuccess(this.message);
  

 final  String message;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProofSuccessCopyWith<_ProofSuccess> get copyWith => __$ProofSuccessCopyWithImpl<_ProofSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProofSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DriverOrdersState.proofSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProofSuccessCopyWith<$Res> implements $DriverOrdersStateCopyWith<$Res> {
  factory _$ProofSuccessCopyWith(_ProofSuccess value, $Res Function(_ProofSuccess) _then) = __$ProofSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ProofSuccessCopyWithImpl<$Res>
    implements _$ProofSuccessCopyWith<$Res> {
  __$ProofSuccessCopyWithImpl(this._self, this._then);

  final _ProofSuccess _self;
  final $Res Function(_ProofSuccess) _then;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ProofSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ProofError implements DriverOrdersState {
  const _ProofError(this.error);
  

 final  String error;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProofErrorCopyWith<_ProofError> get copyWith => __$ProofErrorCopyWithImpl<_ProofError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProofError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DriverOrdersState.proofError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProofErrorCopyWith<$Res> implements $DriverOrdersStateCopyWith<$Res> {
  factory _$ProofErrorCopyWith(_ProofError value, $Res Function(_ProofError) _then) = __$ProofErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ProofErrorCopyWithImpl<$Res>
    implements _$ProofErrorCopyWith<$Res> {
  __$ProofErrorCopyWithImpl(this._self, this._then);

  final _ProofError _self;
  final $Res Function(_ProofError) _then;

/// Create a copy of DriverOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ProofError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
