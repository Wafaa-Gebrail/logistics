// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrackingState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingState<$T>()';
}


}

/// @nodoc
class $TrackingStateCopyWith<T,$Res>  {
$TrackingStateCopyWith(TrackingState<T> _, $Res Function(TrackingState<T>) __);
}


/// Adds pattern-matching-related methods to [TrackingState].
extension TrackingStatePatterns<T> on TrackingState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( TrackingLoading<T> value)?  trackingLoading,TResult Function( TrackingSuccess<T> value)?  trackingSuccess,TResult Function( TrackingError<T> value)?  trackingError,TResult Function( AddTrackingLoading<T> value)?  addTrackingLoading,TResult Function( AddTrackingSuccess<T> value)?  addTrackingSuccess,TResult Function( AddTrackingError<T> value)?  addTrackingError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TrackingLoading() when trackingLoading != null:
return trackingLoading(_that);case TrackingSuccess() when trackingSuccess != null:
return trackingSuccess(_that);case TrackingError() when trackingError != null:
return trackingError(_that);case AddTrackingLoading() when addTrackingLoading != null:
return addTrackingLoading(_that);case AddTrackingSuccess() when addTrackingSuccess != null:
return addTrackingSuccess(_that);case AddTrackingError() when addTrackingError != null:
return addTrackingError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( TrackingLoading<T> value)  trackingLoading,required TResult Function( TrackingSuccess<T> value)  trackingSuccess,required TResult Function( TrackingError<T> value)  trackingError,required TResult Function( AddTrackingLoading<T> value)  addTrackingLoading,required TResult Function( AddTrackingSuccess<T> value)  addTrackingSuccess,required TResult Function( AddTrackingError<T> value)  addTrackingError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case TrackingLoading():
return trackingLoading(_that);case TrackingSuccess():
return trackingSuccess(_that);case TrackingError():
return trackingError(_that);case AddTrackingLoading():
return addTrackingLoading(_that);case AddTrackingSuccess():
return addTrackingSuccess(_that);case AddTrackingError():
return addTrackingError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( TrackingLoading<T> value)?  trackingLoading,TResult? Function( TrackingSuccess<T> value)?  trackingSuccess,TResult? Function( TrackingError<T> value)?  trackingError,TResult? Function( AddTrackingLoading<T> value)?  addTrackingLoading,TResult? Function( AddTrackingSuccess<T> value)?  addTrackingSuccess,TResult? Function( AddTrackingError<T> value)?  addTrackingError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TrackingLoading() when trackingLoading != null:
return trackingLoading(_that);case TrackingSuccess() when trackingSuccess != null:
return trackingSuccess(_that);case TrackingError() when trackingError != null:
return trackingError(_that);case AddTrackingLoading() when addTrackingLoading != null:
return addTrackingLoading(_that);case AddTrackingSuccess() when addTrackingSuccess != null:
return addTrackingSuccess(_that);case AddTrackingError() when addTrackingError != null:
return addTrackingError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  trackingLoading,TResult Function( T data)?  trackingSuccess,TResult Function( String error)?  trackingError,TResult Function()?  addTrackingLoading,TResult Function( T data)?  addTrackingSuccess,TResult Function( String error)?  addTrackingError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TrackingLoading() when trackingLoading != null:
return trackingLoading();case TrackingSuccess() when trackingSuccess != null:
return trackingSuccess(_that.data);case TrackingError() when trackingError != null:
return trackingError(_that.error);case AddTrackingLoading() when addTrackingLoading != null:
return addTrackingLoading();case AddTrackingSuccess() when addTrackingSuccess != null:
return addTrackingSuccess(_that.data);case AddTrackingError() when addTrackingError != null:
return addTrackingError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  trackingLoading,required TResult Function( T data)  trackingSuccess,required TResult Function( String error)  trackingError,required TResult Function()  addTrackingLoading,required TResult Function( T data)  addTrackingSuccess,required TResult Function( String error)  addTrackingError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case TrackingLoading():
return trackingLoading();case TrackingSuccess():
return trackingSuccess(_that.data);case TrackingError():
return trackingError(_that.error);case AddTrackingLoading():
return addTrackingLoading();case AddTrackingSuccess():
return addTrackingSuccess(_that.data);case AddTrackingError():
return addTrackingError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  trackingLoading,TResult? Function( T data)?  trackingSuccess,TResult? Function( String error)?  trackingError,TResult? Function()?  addTrackingLoading,TResult? Function( T data)?  addTrackingSuccess,TResult? Function( String error)?  addTrackingError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TrackingLoading() when trackingLoading != null:
return trackingLoading();case TrackingSuccess() when trackingSuccess != null:
return trackingSuccess(_that.data);case TrackingError() when trackingError != null:
return trackingError(_that.error);case AddTrackingLoading() when addTrackingLoading != null:
return addTrackingLoading();case AddTrackingSuccess() when addTrackingSuccess != null:
return addTrackingSuccess(_that.data);case AddTrackingError() when addTrackingError != null:
return addTrackingError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements TrackingState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingState<$T>.initial()';
}


}




/// @nodoc


class TrackingLoading<T> implements TrackingState<T> {
  const TrackingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingState<$T>.trackingLoading()';
}


}




/// @nodoc


class TrackingSuccess<T> implements TrackingState<T> {
  const TrackingSuccess(this.data);
  

 final  T data;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingSuccessCopyWith<T, TrackingSuccess<T>> get copyWith => _$TrackingSuccessCopyWithImpl<T, TrackingSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TrackingState<$T>.trackingSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $TrackingSuccessCopyWith<T,$Res> implements $TrackingStateCopyWith<T, $Res> {
  factory $TrackingSuccessCopyWith(TrackingSuccess<T> value, $Res Function(TrackingSuccess<T>) _then) = _$TrackingSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$TrackingSuccessCopyWithImpl<T,$Res>
    implements $TrackingSuccessCopyWith<T, $Res> {
  _$TrackingSuccessCopyWithImpl(this._self, this._then);

  final TrackingSuccess<T> _self;
  final $Res Function(TrackingSuccess<T>) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(TrackingSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class TrackingError<T> implements TrackingState<T> {
  const TrackingError({required this.error});
  

 final  String error;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingErrorCopyWith<T, TrackingError<T>> get copyWith => _$TrackingErrorCopyWithImpl<T, TrackingError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TrackingState<$T>.trackingError(error: $error)';
}


}

/// @nodoc
abstract mixin class $TrackingErrorCopyWith<T,$Res> implements $TrackingStateCopyWith<T, $Res> {
  factory $TrackingErrorCopyWith(TrackingError<T> value, $Res Function(TrackingError<T>) _then) = _$TrackingErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$TrackingErrorCopyWithImpl<T,$Res>
    implements $TrackingErrorCopyWith<T, $Res> {
  _$TrackingErrorCopyWithImpl(this._self, this._then);

  final TrackingError<T> _self;
  final $Res Function(TrackingError<T>) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(TrackingError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddTrackingLoading<T> implements TrackingState<T> {
  const AddTrackingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTrackingLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingState<$T>.addTrackingLoading()';
}


}




/// @nodoc


class AddTrackingSuccess<T> implements TrackingState<T> {
  const AddTrackingSuccess(this.data);
  

 final  T data;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTrackingSuccessCopyWith<T, AddTrackingSuccess<T>> get copyWith => _$AddTrackingSuccessCopyWithImpl<T, AddTrackingSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTrackingSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TrackingState<$T>.addTrackingSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddTrackingSuccessCopyWith<T,$Res> implements $TrackingStateCopyWith<T, $Res> {
  factory $AddTrackingSuccessCopyWith(AddTrackingSuccess<T> value, $Res Function(AddTrackingSuccess<T>) _then) = _$AddTrackingSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AddTrackingSuccessCopyWithImpl<T,$Res>
    implements $AddTrackingSuccessCopyWith<T, $Res> {
  _$AddTrackingSuccessCopyWithImpl(this._self, this._then);

  final AddTrackingSuccess<T> _self;
  final $Res Function(AddTrackingSuccess<T>) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AddTrackingSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AddTrackingError<T> implements TrackingState<T> {
  const AddTrackingError({required this.error});
  

 final  String error;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTrackingErrorCopyWith<T, AddTrackingError<T>> get copyWith => _$AddTrackingErrorCopyWithImpl<T, AddTrackingError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTrackingError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TrackingState<$T>.addTrackingError(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddTrackingErrorCopyWith<T,$Res> implements $TrackingStateCopyWith<T, $Res> {
  factory $AddTrackingErrorCopyWith(AddTrackingError<T> value, $Res Function(AddTrackingError<T>) _then) = _$AddTrackingErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AddTrackingErrorCopyWithImpl<T,$Res>
    implements $AddTrackingErrorCopyWith<T, $Res> {
  _$AddTrackingErrorCopyWithImpl(this._self, this._then);

  final AddTrackingError<T> _self;
  final $Res Function(AddTrackingError<T>) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddTrackingError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
