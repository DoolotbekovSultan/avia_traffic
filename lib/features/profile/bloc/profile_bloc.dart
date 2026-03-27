import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/features/auth/domain/usecases/get_personal_info_usecase.dart';
import 'package:aviatraffic/features/profile/bloc/profile_event.dart';
import 'package:aviatraffic/features/profile/bloc/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  final GetPersonalInfoUseCase _getPersonalInfoUseCase;

  ProfileBloc(this._getPersonalInfoUseCase)
    : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(loadPersonalInfo: (_) => _onLoadPersonalData(emit));
    });
  }

  Future<void> _onLoadPersonalData(Emitter<ProfileState> emit) async {
    emit(ProfileState.loading());

    final result = await _getPersonalInfoUseCase(NoParams());

    result.fold(
      (left) {
        emit(ProfileState.failure());
      },
      (right) {
        emit(ProfileState.success());
      },
    );
  }
}
