import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';
import 'package:aviatraffic/features/home/domain/entities/home_news.dart';
import 'package:aviatraffic/features/home/domain/usecases/get_home_data_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetHomeDataUsecase _getHomeDataUsecase;

  HomeBloc({
    required GetHomeDataUsecase getHomeDataUsecase,
  })  : _getHomeDataUsecase = getHomeDataUsecase,
        super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) => event.map(
        started: (_) => _onStarted(emit),
        refresh: (_) => _onStarted(emit),
      ),
    );
  }

  Future<void> _onStarted(Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    final result = await _getHomeDataUsecase.execute(const NoParams());

    result.fold(
      (failure) => emit(HomeState.failure(failure: failure)),
      (data) => emit(
        HomeState.loaded(
          news: data.news,
          deals: data.deals,
        ),
      ),
    );
  }
}

