import 'package:freezed_annotation/freezed_annotation.dart';
part 'tracking_state.freezed.dart';

@freezed
class TrackingState<T> with _$TrackingState<T> {
  const factory TrackingState.initial() = _Initial;

  const factory TrackingState.trackingLoading() = TrackingLoading;
  const factory TrackingState.trackingSuccess(T data) = TrackingSuccess<T>;
  const factory TrackingState.trackingError({required String error}) = TrackingError;

  const factory TrackingState.addTrackingLoading() = AddTrackingLoading;
  const factory TrackingState.addTrackingSuccess(T data) = AddTrackingSuccess<T>;
  const factory TrackingState.addTrackingError({required String error}) = AddTrackingError;
}