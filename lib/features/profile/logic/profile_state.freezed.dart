// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ProfileLoading value)?  loading,TResult Function( _ProfileLoaded value)?  loaded,TResult Function( _ProfileError value)?  error,TResult Function( _DriverLoading value)?  driverLoading,TResult Function( _DriverLoaded value)?  driverLoaded,TResult Function( _DriverError value)?  driverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ProfileLoading() when loading != null:
return loading(_that);case _ProfileLoaded() when loaded != null:
return loaded(_that);case _ProfileError() when error != null:
return error(_that);case _DriverLoading() when driverLoading != null:
return driverLoading(_that);case _DriverLoaded() when driverLoaded != null:
return driverLoaded(_that);case _DriverError() when driverError != null:
return driverError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ProfileLoading value)  loading,required TResult Function( _ProfileLoaded value)  loaded,required TResult Function( _ProfileError value)  error,required TResult Function( _DriverLoading value)  driverLoading,required TResult Function( _DriverLoaded value)  driverLoaded,required TResult Function( _DriverError value)  driverError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ProfileLoading():
return loading(_that);case _ProfileLoaded():
return loaded(_that);case _ProfileError():
return error(_that);case _DriverLoading():
return driverLoading(_that);case _DriverLoaded():
return driverLoaded(_that);case _DriverError():
return driverError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ProfileLoading value)?  loading,TResult? Function( _ProfileLoaded value)?  loaded,TResult? Function( _ProfileError value)?  error,TResult? Function( _DriverLoading value)?  driverLoading,TResult? Function( _DriverLoaded value)?  driverLoaded,TResult? Function( _DriverError value)?  driverError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ProfileLoading() when loading != null:
return loading(_that);case _ProfileLoaded() when loaded != null:
return loaded(_that);case _ProfileError() when error != null:
return error(_that);case _DriverLoading() when driverLoading != null:
return driverLoading(_that);case _DriverLoaded() when driverLoaded != null:
return driverLoaded(_that);case _DriverError() when driverError != null:
return driverError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( User user)?  loaded,TResult Function( String error)?  error,TResult Function()?  driverLoading,TResult Function( DriverAuthResponse driverAuthResponse)?  driverLoaded,TResult Function( String error)?  driverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ProfileLoading() when loading != null:
return loading();case _ProfileLoaded() when loaded != null:
return loaded(_that.user);case _ProfileError() when error != null:
return error(_that.error);case _DriverLoading() when driverLoading != null:
return driverLoading();case _DriverLoaded() when driverLoaded != null:
return driverLoaded(_that.driverAuthResponse);case _DriverError() when driverError != null:
return driverError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( User user)  loaded,required TResult Function( String error)  error,required TResult Function()  driverLoading,required TResult Function( DriverAuthResponse driverAuthResponse)  driverLoaded,required TResult Function( String error)  driverError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _ProfileLoading():
return loading();case _ProfileLoaded():
return loaded(_that.user);case _ProfileError():
return error(_that.error);case _DriverLoading():
return driverLoading();case _DriverLoaded():
return driverLoaded(_that.driverAuthResponse);case _DriverError():
return driverError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( User user)?  loaded,TResult? Function( String error)?  error,TResult? Function()?  driverLoading,TResult? Function( DriverAuthResponse driverAuthResponse)?  driverLoaded,TResult? Function( String error)?  driverError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ProfileLoading() when loading != null:
return loading();case _ProfileLoaded() when loaded != null:
return loaded(_that.user);case _ProfileError() when error != null:
return error(_that.error);case _DriverLoading() when driverLoading != null:
return driverLoading();case _DriverLoaded() when driverLoaded != null:
return driverLoaded(_that.driverAuthResponse);case _DriverError() when driverError != null:
return driverError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class _ProfileLoading implements ProfileState {
  const _ProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class _ProfileLoaded implements ProfileState {
  const _ProfileLoaded(this.user);
  

 final  User user;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileLoadedCopyWith<_ProfileLoaded> get copyWith => __$ProfileLoadedCopyWithImpl<_ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileLoaded&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileState.loaded(user: $user)';
}


}

/// @nodoc
abstract mixin class _$ProfileLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileLoadedCopyWith(_ProfileLoaded value, $Res Function(_ProfileLoaded) _then) = __$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class __$ProfileLoadedCopyWithImpl<$Res>
    implements _$ProfileLoadedCopyWith<$Res> {
  __$ProfileLoadedCopyWithImpl(this._self, this._then);

  final _ProfileLoaded _self;
  final $Res Function(_ProfileLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_ProfileLoaded(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _ProfileError implements ProfileState {
  const _ProfileError({required this.error});
  

 final  String error;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileErrorCopyWith<_ProfileError> get copyWith => __$ProfileErrorCopyWithImpl<_ProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProfileErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileErrorCopyWith(_ProfileError value, $Res Function(_ProfileError) _then) = __$ProfileErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ProfileErrorCopyWithImpl<$Res>
    implements _$ProfileErrorCopyWith<$Res> {
  __$ProfileErrorCopyWithImpl(this._self, this._then);

  final _ProfileError _self;
  final $Res Function(_ProfileError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ProfileError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DriverLoading implements ProfileState {
  const _DriverLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.driverLoading()';
}


}




/// @nodoc


class _DriverLoaded implements ProfileState {
  const _DriverLoaded(this.driverAuthResponse);
  

 final  DriverAuthResponse driverAuthResponse;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverLoadedCopyWith<_DriverLoaded> get copyWith => __$DriverLoadedCopyWithImpl<_DriverLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLoaded&&(identical(other.driverAuthResponse, driverAuthResponse) || other.driverAuthResponse == driverAuthResponse));
}


@override
int get hashCode => Object.hash(runtimeType,driverAuthResponse);

@override
String toString() {
  return 'ProfileState.driverLoaded(driverAuthResponse: $driverAuthResponse)';
}


}

/// @nodoc
abstract mixin class _$DriverLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$DriverLoadedCopyWith(_DriverLoaded value, $Res Function(_DriverLoaded) _then) = __$DriverLoadedCopyWithImpl;
@useResult
$Res call({
 DriverAuthResponse driverAuthResponse
});




}
/// @nodoc
class __$DriverLoadedCopyWithImpl<$Res>
    implements _$DriverLoadedCopyWith<$Res> {
  __$DriverLoadedCopyWithImpl(this._self, this._then);

  final _DriverLoaded _self;
  final $Res Function(_DriverLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? driverAuthResponse = null,}) {
  return _then(_DriverLoaded(
null == driverAuthResponse ? _self.driverAuthResponse : driverAuthResponse // ignore: cast_nullable_to_non_nullable
as DriverAuthResponse,
  ));
}


}

/// @nodoc


class _DriverError implements ProfileState {
  const _DriverError({required this.error});
  

 final  String error;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverErrorCopyWith<_DriverError> get copyWith => __$DriverErrorCopyWithImpl<_DriverError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileState.driverError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DriverErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$DriverErrorCopyWith(_DriverError value, $Res Function(_DriverError) _then) = __$DriverErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$DriverErrorCopyWithImpl<$Res>
    implements _$DriverErrorCopyWith<$Res> {
  __$DriverErrorCopyWithImpl(this._self, this._then);

  final _DriverError _self;
  final $Res Function(_DriverError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_DriverError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
