import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
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
  final String email;
  const ConfirmCodePage({super.key, required this.email});

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  late final TextEditingController _codeEditingController;
  late final AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = getIt<AuthBloc>();
    _codeEditingController = TextEditingController();
  }

  @override
  void dispose() {
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
              context.router.replaceAll([const MainRoute()]);
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
                    Text('Код подтверждения'),
                    Gap.v12,
                    Text(
                      'На вашу почту ${widget.email}\nбыл отправлен код подтверждения. \nПожалуйста введите код ниже', // ✅ email из widget
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: _codeEditingController,
                      decoration: InputDecoration(
                        hintText: 'Код подтверждения',
                        fillColor: Colors.white,
                        errorText: state.maybeMap(
                          failure: (f) => f.nameError,
                          orElse: () => null,
                        ),
                      ),
                    ),
                    Gap.v12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Отправить код еще раз',
                          style: getIt<AppTextStyles>().caption.copyWith(
                                color: AppColors.neutral500,
                              ),
                        ),
                        Spacer(),
                        Text(
                          '00:59',
                          style: getIt<AppTextStyles>()
                              .bodyMediumSemiBold
                              .copyWith(color: AppColors.onBackground),
                        ),
                      ],
                    ),
                    SizedBox(height: 314.h),
                    SizedBox(
                      height: 56.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: state.maybeMap(
                          loading: (_) => null,
                          orElse: () => () {
                            _authBloc.add(
                              AuthEvent.confirmCode(
                                params: ConfirmCodeParams(
                                  code: _codeEditingController.text, // ✅ .text
                                  email: widget.email,
                                ),
                              ),
                            );
                          },
                        ),
                        child: state.maybeMap(
                          loading: (_) => const CircularProgressIndicator(
                              color: Colors.white),
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
