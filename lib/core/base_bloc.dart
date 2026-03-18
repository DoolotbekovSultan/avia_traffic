import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState) {
    Log.i(
      'BLoс $runtimeType инициализирован',
      error: 'Начальное состояние: $initialState',
    );
  }

  @override
  void onEvent(Event event) {
    logEvent(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<State> change) {
    logState(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    handleError(error, stackTrace);
    super.onError(error, stackTrace);
  }

  void logEvent(Event event) {
    Log.bloc(runtimeType.toString(), 'event: $event');
  }

  void logState(Change<State> change) {
    Log.bloc(
      runtimeType.toString(),
      'state: ${change.currentState} > ${change.nextState}',
      state: 'Изменение состояния',
    );
  }

  void handleError(Object error, StackTrace stackTrace) {
    if (error is Failure) {
      Log.e(
        'Ошибка в $runtimeType: ${error.userMessage}',
        error: error,
        stackTrace: stackTrace,
      );
    } else {
      Log.e(
        'Неизвестная ошибка в $runtimeType',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> close() {
    Log.i('BLoC $runtimeType закрыт');
    return super.close();
  }

  Stream<State> executeWithErrorHandling<T>(
    Future<T> Function() action, {
    required State Function(T data) onSuccess,
    required State Function(Failure failure) onError,
  }) async* {
    try {
      final result = await action();
      yield onSuccess(result);
    } catch (e, s) {
      final failure = _convertToFailure(e, s);
      yield onError(failure);
    }
  }

  Stream<State> withLoading(
    Future<void> Function() action, {
    required State Function(bool isLoading) updateLoading,
  }) async* {
    yield updateLoading(true);
    try {
      await action();
    } finally {
      yield updateLoading(false);
    }
  }

  Failure _convertToFailure(Object error, StackTrace stackTrace) {
    if (error is Failure) {
      return error;
    } else {
      return Failure.unknown(message: error.toString());
    }
  }
}
