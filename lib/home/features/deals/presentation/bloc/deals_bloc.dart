import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/home/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/home/features/deals/domain/usecases/get_deals_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'deals_bloc.freezed.dart';
part 'deals_event.dart';
part 'deals_state.dart';

@injectable
class DealsBloc extends BaseBloc<DealsEvent, DealsState> {
  final GetDealsUsecase _getDealsUsecase;

  DealsBloc(this._getDealsUsecase) : super(const DealsState.initial()) {
    on<DealsEvent>(
      (event, emit) => event.map(started: (_) => _onStarted(emit)),
    );
  }

  Future<void> _onStarted(Emitter<DealsState> emit) async {
    emit(const DealsState.loading());
    final result = await _getDealsUsecase.execute(const NoParams());
    result.fold(
      (failure) => emit(DealsState.failure(failure: failure)),
      (deals) => emit(DealsState.loaded(deals: deals)),
    );
  }
}
