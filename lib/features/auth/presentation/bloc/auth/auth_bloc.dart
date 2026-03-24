import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/utils/validator.dart';
import 'package:aviatraffic/features/auth/domain/usecases/confirm_code_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/login_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/logout_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/modify_password_usecase.dart';
import 'package:aviatraffic/features/auth/domain/usecases/register_usecase.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final LogoutUseCase _logoutUseCase;
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final ModifyPasswordUseCase _modifyPasswordUseCase;
  final ConfirmCodeUseCase _confirmCodeUseCase;

  AuthBloc(
    this._loginUseCase,
    this._registerUseCase,
    this._logoutUseCase,
    this._forgotPasswordUseCase,
    this._modifyPasswordUseCase,
    this._confirmCodeUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (e) => _onLogin(e, emit),
        register: (e) => _onRegister(e, emit),
        logout: (e) => _onLogout(e, emit),
        forgotPassword: (e) => _onForgotPassword(e, emit),
        modifyPassword: (e) => _onModifyPassword(e, emit),
        confirmCode: (e) => _onConfirmCode(e, emit),
      );
    });
  }

  Future<void> _onLogin(AuthLogin event, Emitter<AuthState> emit) async {
    final phoneError = Validator.validatePhone(event.params.phone);
    final passwordError = Validator.validatePassword(event.params.password);

    if (phoneError != null || passwordError != null) {
      emit(
        AuthState.failure(
          failure: const Failure.validation(message: 'Ошибка валидации'),
          phoneError: phoneError,
          passwordError: passwordError,
        ),
      );
      return;
    }

    emit(const AuthState.loading());
    final result = await _loginUseCase.execute(event.params);
    result.fold(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.success()),
    );
  }

  Future<void> _onRegister(AuthRegister event, Emitter<AuthState> emit) async {
    final emailError = Validator.validateEmail(event.params.email);
    final phoneError = Validator.validatePhone(event.params.phone);
    final nameError = Validator.validateName(event.params.firstName);
    final passwordError = Validator.validatePassword(event.params.password);
    final confirmPasswordError = Validator.validateConfirmPassword(
      event.params.password,
      event.params.confirmPassword,
    );

    if (emailError != null ||
        phoneError != null ||
        nameError != null ||
        passwordError != null ||
        confirmPasswordError != null) {
      emit(
        AuthState.failure(
          failure: const Failure.validation(message: 'Ошибка валидации'),
          emailError: emailError,
          phoneError: phoneError,
          nameError: nameError,
          passwordError: passwordError,
          confirmPasswordError: confirmPasswordError,
        ),
      );
      return;
    }

    emit(const AuthState.loading());

    final result = await _registerUseCase(event.params);

    result.fold(
      (failure) {
        if (failure is ClientValidationFailure) {
          emit(
            AuthState.failure(
              failure: failure,
              emailError: failure.errors?['email']?.join(', '),
              phoneError: failure.errors?['phone']?.join(', '),
              nameError: failure.errors?['first_name']?.join(', '),
              passwordError: failure.errors?['password']?.join(', '),
              confirmPasswordError: failure.errors?['confirm_password']?.join(
                ', ',
              ),
            ),
          );
        } else {
          emit(AuthState.failure(failure: failure));
        }
      },
      (user) {
        emit(AuthState.authenticated());
      },
    );
  }

  Future<void> _onLogout(AuthLogout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _logoutUseCase.execute(NoParams());
    result.fold(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _onForgotPassword(
    AuthForgotPassword event,
    Emitter<AuthState> emit,
  ) async {
    final emailError = Validator.validateEmail(event.email);

    if (emailError != null) {
      emit(
        AuthState.failure(
          failure: const Failure.validation(message: 'Ошибка валидации'),
          emailError: emailError,
        ),
      );
      return;
    }

    emit(const AuthState.loading());
    final result = await _forgotPasswordUseCase.execute(event.email);
    result.fold(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.success()),
    );
  }

  Future<void> _onModifyPassword(
    AuthModifyPassword event,
    Emitter<AuthState> emit,
  ) async {
    final passwordError = Validator.validatePassword(event.params.password);
    final confirmPasswordError = Validator.validateConfirmPassword(
      event.params.password,
      event.params.confirmPassword,
    );

    if (passwordError != null || confirmPasswordError != null) {
      emit(
        AuthState.failure(
          failure: const Failure.validation(message: 'Ошибка валидации'),
          passwordError: passwordError,
          confirmPasswordError: confirmPasswordError,
        ),
      );
      return;
    }

    emit(const AuthState.loading());
    final result = await _modifyPasswordUseCase.execute(event.params);
    result.fold(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.success()),
    );
  }

  Future<void> _onConfirmCode(
    AuthConfirmCode event,
    Emitter<AuthState> emit,
  ) async {
    final emailError = Validator.validateEmail(event.params.email);
    final codeError = Validator.validateCode(event.params.code);

    if (emailError != null || codeError != null) {
      emit(
        AuthState.failure(
          failure: const Failure.validation(message: 'Ошибка валидации'),
          emailError: emailError,
          codeError: codeError,
        ),
      );
      return;
    }

    emit(const AuthState.loading());
    final result = await _confirmCodeUseCase.execute(event.params);
    result.fold(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.success()),
    );
  }
}
