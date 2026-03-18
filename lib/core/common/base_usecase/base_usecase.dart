import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T, Params> {
  const BaseUseCase();

  Future<Either<Failure, T>> execute(Params params);

  Future<Either<Failure, T>> call(Params params) async {
    Log.d('UseCase started: $runtimeType with params: $params');

    try {
      final result = await execute(params);

      result.fold(
        (failure) => Log.e(
          'UseCase failed: $runtimeType with Failure: ${failure.userMessage}',
        ),
        (data) => Log.d('UseCase succeeded: $runtimeType with result: $data'),
      );

      return result;
    } catch (e, _) {
      return Left(Failure.unknown(message: e.toString()));
    } finally {
      Log.d('UseCase finished: $runtimeType');
    }
  }
}
