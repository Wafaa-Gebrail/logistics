// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>()';
}


}

/// @nodoc
class $OrderStateCopyWith<T,$Res>  {
$OrderStateCopyWith(OrderState<T> _, $Res Function(OrderState<T>) __);
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns<T> on OrderState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( CreateOrderLoading<T> value)?  addOrderLoading,TResult Function( CreateOrderSuccess<T> value)?  addOrderSuccess,TResult Function( CreateOrderError<T> value)?  addOrderError,TResult Function( GetOrdersLoading<T> value)?  getOrdersLoading,TResult Function( GetOrdersSuccess<T> value)?  getOrdersSuccess,TResult Function( GetOrdersError<T> value)?  getOrdersError,TResult Function( OrderDetailsLoading<T> value)?  orderDetailsLoading,TResult Function( OrderDetailsSuccess<T> value)?  orderDetailsSuccess,TResult Function( OrderDetailsError<T> value)?  orderDetailsError,TResult Function( CancelOrderLoading<T> value)?  cancelOrderLoading,TResult Function( CancelOrderSuccess<T> value)?  cancelOrderSuccess,TResult Function( CancelOrderError<T> value)?  cancelOrderError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CreateOrderLoading() when addOrderLoading != null:
return addOrderLoading(_that);case CreateOrderSuccess() when addOrderSuccess != null:
return addOrderSuccess(_that);case CreateOrderError() when addOrderError != null:
return addOrderError(_that);case GetOrdersLoading() when getOrdersLoading != null:
return getOrdersLoading(_that);case GetOrdersSuccess() when getOrdersSuccess != null:
return getOrdersSuccess(_that);case GetOrdersError() when getOrdersError != null:
return getOrdersError(_that);case OrderDetailsLoading() when orderDetailsLoading != null:
return orderDetailsLoading(_that);case OrderDetailsSuccess() when orderDetailsSuccess != null:
return orderDetailsSuccess(_that);case OrderDetailsError() when orderDetailsError != null:
return orderDetailsError(_that);case CancelOrderLoading() when cancelOrderLoading != null:
return cancelOrderLoading(_that);case CancelOrderSuccess() when cancelOrderSuccess != null:
return cancelOrderSuccess(_that);case CancelOrderError() when cancelOrderError != null:
return cancelOrderError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( CreateOrderLoading<T> value)  addOrderLoading,required TResult Function( CreateOrderSuccess<T> value)  addOrderSuccess,required TResult Function( CreateOrderError<T> value)  addOrderError,required TResult Function( GetOrdersLoading<T> value)  getOrdersLoading,required TResult Function( GetOrdersSuccess<T> value)  getOrdersSuccess,required TResult Function( GetOrdersError<T> value)  getOrdersError,required TResult Function( OrderDetailsLoading<T> value)  orderDetailsLoading,required TResult Function( OrderDetailsSuccess<T> value)  orderDetailsSuccess,required TResult Function( OrderDetailsError<T> value)  orderDetailsError,required TResult Function( CancelOrderLoading<T> value)  cancelOrderLoading,required TResult Function( CancelOrderSuccess<T> value)  cancelOrderSuccess,required TResult Function( CancelOrderError<T> value)  cancelOrderError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case CreateOrderLoading():
return addOrderLoading(_that);case CreateOrderSuccess():
return addOrderSuccess(_that);case CreateOrderError():
return addOrderError(_that);case GetOrdersLoading():
return getOrdersLoading(_that);case GetOrdersSuccess():
return getOrdersSuccess(_that);case GetOrdersError():
return getOrdersError(_that);case OrderDetailsLoading():
return orderDetailsLoading(_that);case OrderDetailsSuccess():
return orderDetailsSuccess(_that);case OrderDetailsError():
return orderDetailsError(_that);case CancelOrderLoading():
return cancelOrderLoading(_that);case CancelOrderSuccess():
return cancelOrderSuccess(_that);case CancelOrderError():
return cancelOrderError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( CreateOrderLoading<T> value)?  addOrderLoading,TResult? Function( CreateOrderSuccess<T> value)?  addOrderSuccess,TResult? Function( CreateOrderError<T> value)?  addOrderError,TResult? Function( GetOrdersLoading<T> value)?  getOrdersLoading,TResult? Function( GetOrdersSuccess<T> value)?  getOrdersSuccess,TResult? Function( GetOrdersError<T> value)?  getOrdersError,TResult? Function( OrderDetailsLoading<T> value)?  orderDetailsLoading,TResult? Function( OrderDetailsSuccess<T> value)?  orderDetailsSuccess,TResult? Function( OrderDetailsError<T> value)?  orderDetailsError,TResult? Function( CancelOrderLoading<T> value)?  cancelOrderLoading,TResult? Function( CancelOrderSuccess<T> value)?  cancelOrderSuccess,TResult? Function( CancelOrderError<T> value)?  cancelOrderError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CreateOrderLoading() when addOrderLoading != null:
return addOrderLoading(_that);case CreateOrderSuccess() when addOrderSuccess != null:
return addOrderSuccess(_that);case CreateOrderError() when addOrderError != null:
return addOrderError(_that);case GetOrdersLoading() when getOrdersLoading != null:
return getOrdersLoading(_that);case GetOrdersSuccess() when getOrdersSuccess != null:
return getOrdersSuccess(_that);case GetOrdersError() when getOrdersError != null:
return getOrdersError(_that);case OrderDetailsLoading() when orderDetailsLoading != null:
return orderDetailsLoading(_that);case OrderDetailsSuccess() when orderDetailsSuccess != null:
return orderDetailsSuccess(_that);case OrderDetailsError() when orderDetailsError != null:
return orderDetailsError(_that);case CancelOrderLoading() when cancelOrderLoading != null:
return cancelOrderLoading(_that);case CancelOrderSuccess() when cancelOrderSuccess != null:
return cancelOrderSuccess(_that);case CancelOrderError() when cancelOrderError != null:
return cancelOrderError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  addOrderLoading,TResult Function( T data)?  addOrderSuccess,TResult Function( String error)?  addOrderError,TResult Function()?  getOrdersLoading,TResult Function( T data)?  getOrdersSuccess,TResult Function( String error)?  getOrdersError,TResult Function()?  orderDetailsLoading,TResult Function( T data)?  orderDetailsSuccess,TResult Function( String error)?  orderDetailsError,TResult Function()?  cancelOrderLoading,TResult Function( T data)?  cancelOrderSuccess,TResult Function( String error)?  cancelOrderError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CreateOrderLoading() when addOrderLoading != null:
return addOrderLoading();case CreateOrderSuccess() when addOrderSuccess != null:
return addOrderSuccess(_that.data);case CreateOrderError() when addOrderError != null:
return addOrderError(_that.error);case GetOrdersLoading() when getOrdersLoading != null:
return getOrdersLoading();case GetOrdersSuccess() when getOrdersSuccess != null:
return getOrdersSuccess(_that.data);case GetOrdersError() when getOrdersError != null:
return getOrdersError(_that.error);case OrderDetailsLoading() when orderDetailsLoading != null:
return orderDetailsLoading();case OrderDetailsSuccess() when orderDetailsSuccess != null:
return orderDetailsSuccess(_that.data);case OrderDetailsError() when orderDetailsError != null:
return orderDetailsError(_that.error);case CancelOrderLoading() when cancelOrderLoading != null:
return cancelOrderLoading();case CancelOrderSuccess() when cancelOrderSuccess != null:
return cancelOrderSuccess(_that.data);case CancelOrderError() when cancelOrderError != null:
return cancelOrderError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  addOrderLoading,required TResult Function( T data)  addOrderSuccess,required TResult Function( String error)  addOrderError,required TResult Function()  getOrdersLoading,required TResult Function( T data)  getOrdersSuccess,required TResult Function( String error)  getOrdersError,required TResult Function()  orderDetailsLoading,required TResult Function( T data)  orderDetailsSuccess,required TResult Function( String error)  orderDetailsError,required TResult Function()  cancelOrderLoading,required TResult Function( T data)  cancelOrderSuccess,required TResult Function( String error)  cancelOrderError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case CreateOrderLoading():
return addOrderLoading();case CreateOrderSuccess():
return addOrderSuccess(_that.data);case CreateOrderError():
return addOrderError(_that.error);case GetOrdersLoading():
return getOrdersLoading();case GetOrdersSuccess():
return getOrdersSuccess(_that.data);case GetOrdersError():
return getOrdersError(_that.error);case OrderDetailsLoading():
return orderDetailsLoading();case OrderDetailsSuccess():
return orderDetailsSuccess(_that.data);case OrderDetailsError():
return orderDetailsError(_that.error);case CancelOrderLoading():
return cancelOrderLoading();case CancelOrderSuccess():
return cancelOrderSuccess(_that.data);case CancelOrderError():
return cancelOrderError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  addOrderLoading,TResult? Function( T data)?  addOrderSuccess,TResult? Function( String error)?  addOrderError,TResult? Function()?  getOrdersLoading,TResult? Function( T data)?  getOrdersSuccess,TResult? Function( String error)?  getOrdersError,TResult? Function()?  orderDetailsLoading,TResult? Function( T data)?  orderDetailsSuccess,TResult? Function( String error)?  orderDetailsError,TResult? Function()?  cancelOrderLoading,TResult? Function( T data)?  cancelOrderSuccess,TResult? Function( String error)?  cancelOrderError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CreateOrderLoading() when addOrderLoading != null:
return addOrderLoading();case CreateOrderSuccess() when addOrderSuccess != null:
return addOrderSuccess(_that.data);case CreateOrderError() when addOrderError != null:
return addOrderError(_that.error);case GetOrdersLoading() when getOrdersLoading != null:
return getOrdersLoading();case GetOrdersSuccess() when getOrdersSuccess != null:
return getOrdersSuccess(_that.data);case GetOrdersError() when getOrdersError != null:
return getOrdersError(_that.error);case OrderDetailsLoading() when orderDetailsLoading != null:
return orderDetailsLoading();case OrderDetailsSuccess() when orderDetailsSuccess != null:
return orderDetailsSuccess(_that.data);case OrderDetailsError() when orderDetailsError != null:
return orderDetailsError(_that.error);case CancelOrderLoading() when cancelOrderLoading != null:
return cancelOrderLoading();case CancelOrderSuccess() when cancelOrderSuccess != null:
return cancelOrderSuccess(_that.data);case CancelOrderError() when cancelOrderError != null:
return cancelOrderError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements OrderState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>.initial()';
}


}




/// @nodoc


class CreateOrderLoading<T> implements OrderState<T> {
  const CreateOrderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>.addOrderLoading()';
}


}




/// @nodoc


class CreateOrderSuccess<T> implements OrderState<T> {
  const CreateOrderSuccess(this.data);
  

 final  T data;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderSuccessCopyWith<T, CreateOrderSuccess<T>> get copyWith => _$CreateOrderSuccessCopyWithImpl<T, CreateOrderSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OrderState<$T>.addOrderSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateOrderSuccessCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $CreateOrderSuccessCopyWith(CreateOrderSuccess<T> value, $Res Function(CreateOrderSuccess<T>) _then) = _$CreateOrderSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CreateOrderSuccessCopyWithImpl<T,$Res>
    implements $CreateOrderSuccessCopyWith<T, $Res> {
  _$CreateOrderSuccessCopyWithImpl(this._self, this._then);

  final CreateOrderSuccess<T> _self;
  final $Res Function(CreateOrderSuccess<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CreateOrderSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CreateOrderError<T> implements OrderState<T> {
  const CreateOrderError({required this.error});
  

 final  String error;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderErrorCopyWith<T, CreateOrderError<T>> get copyWith => _$CreateOrderErrorCopyWithImpl<T, CreateOrderError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderState<$T>.addOrderError(error: $error)';
}


}

/// @nodoc
abstract mixin class $CreateOrderErrorCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $CreateOrderErrorCopyWith(CreateOrderError<T> value, $Res Function(CreateOrderError<T>) _then) = _$CreateOrderErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$CreateOrderErrorCopyWithImpl<T,$Res>
    implements $CreateOrderErrorCopyWith<T, $Res> {
  _$CreateOrderErrorCopyWithImpl(this._self, this._then);

  final CreateOrderError<T> _self;
  final $Res Function(CreateOrderError<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CreateOrderError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetOrdersLoading<T> implements OrderState<T> {
  const GetOrdersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>.getOrdersLoading()';
}


}




/// @nodoc


class GetOrdersSuccess<T> implements OrderState<T> {
  const GetOrdersSuccess(this.data);
  

 final  T data;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersSuccessCopyWith<T, GetOrdersSuccess<T>> get copyWith => _$GetOrdersSuccessCopyWithImpl<T, GetOrdersSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OrderState<$T>.getOrdersSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetOrdersSuccessCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $GetOrdersSuccessCopyWith(GetOrdersSuccess<T> value, $Res Function(GetOrdersSuccess<T>) _then) = _$GetOrdersSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$GetOrdersSuccessCopyWithImpl<T,$Res>
    implements $GetOrdersSuccessCopyWith<T, $Res> {
  _$GetOrdersSuccessCopyWithImpl(this._self, this._then);

  final GetOrdersSuccess<T> _self;
  final $Res Function(GetOrdersSuccess<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(GetOrdersSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class GetOrdersError<T> implements OrderState<T> {
  const GetOrdersError({required this.error});
  

 final  String error;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersErrorCopyWith<T, GetOrdersError<T>> get copyWith => _$GetOrdersErrorCopyWithImpl<T, GetOrdersError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderState<$T>.getOrdersError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetOrdersErrorCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $GetOrdersErrorCopyWith(GetOrdersError<T> value, $Res Function(GetOrdersError<T>) _then) = _$GetOrdersErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GetOrdersErrorCopyWithImpl<T,$Res>
    implements $GetOrdersErrorCopyWith<T, $Res> {
  _$GetOrdersErrorCopyWithImpl(this._self, this._then);

  final GetOrdersError<T> _self;
  final $Res Function(GetOrdersError<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetOrdersError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OrderDetailsLoading<T> implements OrderState<T> {
  const OrderDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>.orderDetailsLoading()';
}


}




/// @nodoc


class OrderDetailsSuccess<T> implements OrderState<T> {
  const OrderDetailsSuccess(this.data);
  

 final  T data;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsSuccessCopyWith<T, OrderDetailsSuccess<T>> get copyWith => _$OrderDetailsSuccessCopyWithImpl<T, OrderDetailsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OrderState<$T>.orderDetailsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsSuccessCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $OrderDetailsSuccessCopyWith(OrderDetailsSuccess<T> value, $Res Function(OrderDetailsSuccess<T>) _then) = _$OrderDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$OrderDetailsSuccessCopyWithImpl<T,$Res>
    implements $OrderDetailsSuccessCopyWith<T, $Res> {
  _$OrderDetailsSuccessCopyWithImpl(this._self, this._then);

  final OrderDetailsSuccess<T> _self;
  final $Res Function(OrderDetailsSuccess<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(OrderDetailsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OrderDetailsError<T> implements OrderState<T> {
  const OrderDetailsError({required this.error});
  

 final  String error;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsErrorCopyWith<T, OrderDetailsError<T>> get copyWith => _$OrderDetailsErrorCopyWithImpl<T, OrderDetailsError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderState<$T>.orderDetailsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsErrorCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $OrderDetailsErrorCopyWith(OrderDetailsError<T> value, $Res Function(OrderDetailsError<T>) _then) = _$OrderDetailsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$OrderDetailsErrorCopyWithImpl<T,$Res>
    implements $OrderDetailsErrorCopyWith<T, $Res> {
  _$OrderDetailsErrorCopyWithImpl(this._self, this._then);

  final OrderDetailsError<T> _self;
  final $Res Function(OrderDetailsError<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OrderDetailsError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CancelOrderLoading<T> implements OrderState<T> {
  const CancelOrderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelOrderLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState<$T>.cancelOrderLoading()';
}


}




/// @nodoc


class CancelOrderSuccess<T> implements OrderState<T> {
  const CancelOrderSuccess(this.data);
  

 final  T data;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelOrderSuccessCopyWith<T, CancelOrderSuccess<T>> get copyWith => _$CancelOrderSuccessCopyWithImpl<T, CancelOrderSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelOrderSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OrderState<$T>.cancelOrderSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CancelOrderSuccessCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $CancelOrderSuccessCopyWith(CancelOrderSuccess<T> value, $Res Function(CancelOrderSuccess<T>) _then) = _$CancelOrderSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CancelOrderSuccessCopyWithImpl<T,$Res>
    implements $CancelOrderSuccessCopyWith<T, $Res> {
  _$CancelOrderSuccessCopyWithImpl(this._self, this._then);

  final CancelOrderSuccess<T> _self;
  final $Res Function(CancelOrderSuccess<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CancelOrderSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CancelOrderError<T> implements OrderState<T> {
  const CancelOrderError({required this.error});
  

 final  String error;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelOrderErrorCopyWith<T, CancelOrderError<T>> get copyWith => _$CancelOrderErrorCopyWithImpl<T, CancelOrderError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelOrderError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderState<$T>.cancelOrderError(error: $error)';
}


}

/// @nodoc
abstract mixin class $CancelOrderErrorCopyWith<T,$Res> implements $OrderStateCopyWith<T, $Res> {
  factory $CancelOrderErrorCopyWith(CancelOrderError<T> value, $Res Function(CancelOrderError<T>) _then) = _$CancelOrderErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$CancelOrderErrorCopyWithImpl<T,$Res>
    implements $CancelOrderErrorCopyWith<T, $Res> {
  _$CancelOrderErrorCopyWithImpl(this._self, this._then);

  final CancelOrderError<T> _self;
  final $Res Function(CancelOrderError<T>) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CancelOrderError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
