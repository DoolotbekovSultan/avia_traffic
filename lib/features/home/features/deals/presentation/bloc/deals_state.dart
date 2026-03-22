part of 'deals_bloc.dart';

@freezed
class DealsState with _$DealsState {
  const factory DealsState.initial() = _Initial;
  const factory DealsState.loading() = _Loading;
  const factory DealsState.loaded({required List<Deal> deals}) = _Loaded;
  const factory DealsState.failure({required Failure failure}) = _Failure;
}
