import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/auth/domain/usecases/confirm_code_usecase.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ConfirmCodePage extends StatefulWidget {
  final String title;
  final String email;
  final Function onSuccess;

  const ConfirmCodePage({
    super.key,
    required this.title,
    required this.email,
    required this.onSuccess,
  });

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  late final TextEditingController _codeEditingController;
  late final AuthBloc _authBloc;
  int _secondsLeft = 59;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _authBloc = getIt<AuthBloc>();
    _codeEditingController = TextEditingController();
    _startTimer();
    _codeEditingController.addListener(() {
      setState(() {});
    });
  }

  void _startTimer() {
    _timer?.cancel();

    _secondsLeft = 59;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsLeft == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Вы можете запросить код снова')),
        );
        timer.cancel();
      } else {
        setState(() {
          _secondsLeft--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _codeEditingController.dispose();
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
            success: (s) {
              widget.onSuccess();
            },
            failure: (f) {},
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: "Регистрация"),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 88.h),
                    Text(
                      'Код подтверждения',
                      style: getIt<AppTextStyles>().headlineMediumBold.copyWith(
                        color: AppColors.onBackground,
                      ),
                    ),
                    Gap.v12,
                    Text(
                      'На вашу почту ${widget.email}\nбыл отправлен код подтверждения.\nПожалуйста введите код ниже',
                      textAlign: TextAlign.center,
                      style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                        color: AppColors.onBackground,
                        height: 24 / 15,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: _codeEditingController,
                      decoration: InputDecoration(
                        hintText: 'Код подтверждения',
                        fillColor: Colors.white,
                        errorText: state.maybeMap(
                          failure: (f) => f.codeError,
                          orElse: () => null,
                        ),
                      ),
                    ),
                    Gap.v12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _secondsLeft == 0
                              ? () {
                                  _startTimer();
                                  _authBloc.add(
                                    AuthEvent.resendEmail(email: widget.email),
                                  );
                                }
                              : null,
                          child: Text(
                            'Отправить код еще раз',
                            style: getIt<AppTextStyles>().caption.copyWith(
                              color: AppColors.neutral500,
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '00:${_secondsLeft.toString().padLeft(2, '0')}',
                          style: getIt<AppTextStyles>().bodyMediumSemiBold
                              .copyWith(color: AppColors.onBackground),
                        ),
                      ],
                    ),
                    SizedBox(height: 314.h),
                    SizedBox(
                      height: 56.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _codeEditingController.text.isEmpty
                            ? null
                            : state.maybeMap(
                                loading: (_) => null,
                                orElse: () => () {
                                  _authBloc.add(
                                    AuthEvent.confirmCode(
                                      params: ConfirmCodeParams(
                                        code: _codeEditingController.text,
                                        email: widget.email,
                                      ),
                                    ),
                                  );
                                },
                              ),
                        child: state.maybeMap(
                          loading: (_) => const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                          orElse: () => const Text('Подтвердить'),
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
    );
  }
}
