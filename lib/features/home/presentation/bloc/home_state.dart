part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({
    required List<HomeNews> news,
    required List<HomeDeal> deals,
  }) = _Loaded;
  const factory HomeState.failure({required Failure failure}) = _Failure;
}
