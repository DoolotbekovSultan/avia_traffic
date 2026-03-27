import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/auth/domain/usecases/modify_password_usecase.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:aviatraffic/shared/presentation/widgets/custom_text_field.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RecoveryPasswordPage extends StatefulWidget {
  const RecoveryPasswordPage({super.key});

  @override
  State<RecoveryPasswordPage> createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
  late final TextEditingController _passwordEditingController;
  late final TextEditingController _confirmPasswordEditingController;
  late final AuthBloc _authBloc;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _authBloc = getIt<AuthBloc>();
    _passwordEditingController = TextEditingController();
    _confirmPasswordEditingController = TextEditingController();
    _passwordEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _passwordEditingController.dispose();
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBloc,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            success: (_) => context.router.replaceAll([const MainRoute()]),
            failure: (f) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(f.failure.userMessage)));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: "Регистрация"),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: LayoutBuilder(
                builder: (context, contraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: contraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 88.h),
                            Text(
                              '🔐 Восстановление пароля ',
                              style: getIt<AppTextStyles>().headlineMediumBold
                                  .copyWith(color: AppColors.onBackground),
                            ),
                            Gap.v12,
                            Text(
                              'Мы отправим вам электронное\nписьмо, для создания нового пароля',
                              textAlign: TextAlign.center,
                              style: getIt<AppTextStyles>().bodyMediumSemiBold
                                  .copyWith(
                                    color: AppColors.onBackground,
                                    height: 24 / 15,
                                  ),
                            ),
                            SizedBox(height: 44.h),
                            CustomTextField(
                              textEditingController: _passwordEditingController,
                              keyboardType: TextInputType.emailAddress,
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              errorText: state.maybeMap(
                                failure: (f) => f.passwordError,
                                orElse: () => null,
                              ),
                              hintText: 'Новый пароль',
                            ),
                            Gap.v24,
                            CustomTextField(
                              textEditingController:
                                  _confirmPasswordEditingController,
                              keyboardType: TextInputType.emailAddress,
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              errorText: state.maybeMap(
                                failure: (f) => f.confirmPasswordError,
                                orElse: () => null,
                              ),
                              hintText: 'Повторите пароль',
                            ),
                            const Spacer(),
                            Gap.v24,
                            SizedBox(
                              height: 56.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed:
                                    _passwordEditingController.text.isEmpty
                                    ? null
                                    : state.maybeMap(
                                        loading: (_) => null,
                                        orElse: () => () {
                                          _authBloc.add(
                                            AuthEvent.modifyPassword(
                                              params: ModifyPasswordParams(
                                                password:
                                                    _passwordEditingController
                                                        .text,
                                                confirmPassword:
                                                    _confirmPasswordEditingController
                                                        .text,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                child: state.maybeMap(
                                  loading: (_) =>
                                      const CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                  orElse: () => const Text('Сбросить пароль'),
                                ),
                              ),
                            ),
                            Gap.v16,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
