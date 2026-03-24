import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure({
    required Failure failure,
    String? phoneError,
    String? passwordError,
    String? nameError,
    String? confirmPasswordError,
    String? emailError,
    String? codeError,
  }) = _Failure;
  const factory AuthState.success() = _Success;
}
