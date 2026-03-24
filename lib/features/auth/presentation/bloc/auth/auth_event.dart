import 'package:aviatraffic/features/auth/domain/usecases/confirm_code_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/login_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/modify_password_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/register_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required LoginParams params}) = AuthLogin;

  const factory AuthEvent.register({required RegisterParams params}) =
      AuthRegister;

  const factory AuthEvent.logout() = AuthLogout;

  const factory AuthEvent.forgotPassword({required String email}) =
      AuthForgotPassword;

  const factory AuthEvent.modifyPassword({
    required ModifyPasswordParams params,
  }) = AuthModifyPassword;

  const factory AuthEvent.confirmCode({required ConfirmCodeParams params}) =
      AuthConfirmCode;
}
