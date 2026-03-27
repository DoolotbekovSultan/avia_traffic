import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:aviatraffic/shared/presentation/widgets/custom_text_field.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late final TextEditingController _emailEditingController;
  late final AuthBloc _authBloc;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _authBloc = getIt<AuthBloc>();
    _emailEditingController = TextEditingController();
    _emailEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _emailEditingController.dispose();
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
            authenticated: (_) {
              debugPrint("RecoveryPasswordRoute");
              context.router.push(
                ConfirmCodeRoute(
                  title: 'Вход',
                  email: _emailEditingController.text,
                  onSuccess: () =>
                      context.router.pushAll([const RecoveryPasswordRoute()]),
                ),
              );
            },
            failure: (f) {},
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: "Вход"),
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
                              textEditingController: _emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              errorText: state.maybeMap(
                                failure: (f) => f.emailError,
                                orElse: () => null,
                              ),
                              hintText: 'Ваш Email',
                              labelAlways: false,
                              labelText: "Ваше Email",
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 56.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _emailEditingController.text.isEmpty
                                    ? null
                                    : state.maybeMap(
                                        loading: (_) => null,
                                        orElse: () => () {
                                          _authBloc.add(
                                            AuthEvent.forgotPassword(
                                              email:
                                                  _emailEditingController.text,
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
