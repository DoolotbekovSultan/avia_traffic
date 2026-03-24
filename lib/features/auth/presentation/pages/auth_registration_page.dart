import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/auth/domain/usecases/register_usecase.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

const hideEyeImagePath = 'assets/images/hide_eye.svg';
const showEyeImagePath = 'assets/images/show_eye.svg';

@RoutePage()
class AuthRegistrationPage extends StatefulWidget {
  const AuthRegistrationPage({super.key});

  @override
  State<AuthRegistrationPage> createState() => _AuthRegistrationPageState();
}

class _AuthRegistrationPageState extends State<AuthRegistrationPage> {
  late final AuthBloc _authBloc;
  late final TextEditingController _nameTextEditingController;
  late final TextEditingController _emailTextEditingController;
  late final TextEditingController _numberTextEditingController;
  late final TextEditingController _invesionPasswordTextEditingController;
  late final TextEditingController _repeatPasswordTextEditingController;
  bool isInvesionHidden = true;
  bool isRepeatHidden = true;

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();
    _nameTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _numberTextEditingController = TextEditingController();
    _invesionPasswordTextEditingController = TextEditingController();
    _repeatPasswordTextEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _authBloc.close();
    _nameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _invesionPasswordTextEditingController.dispose();
    _repeatPasswordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBloc,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            authenticated: (_) =>
                context.router.replaceAll([const MainRoute()]),
            failure: (f) {},
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: 'Вход'),
            body: Container(
              width: .infinity,
              padding: .symmetric(horizontal: 16.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: .center,
                  children: [
                    SizedBox(height: 88.h),
                    Text(
                      "Регистрация",
                      style: getIt<AppTextStyles>().headlineMediumBold.copyWith(
                        color: AppColors.onBackground,
                      ),
                    ),
                    Gap.v12,
                    Text(
                      'Уважаемый пользователь,\nвыполните вход в приложение',
                      textAlign: .center,
                      style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                        color: AppColors.onBackground,
                        height: 24 / 15,
                      ),
                    ),
                    SizedBox(height: 43.h),
                    TextField(
                      keyboardType: TextInputType.name,
                      controller: _nameTextEditingController,
                      decoration: InputDecoration(
                        hintText: 'Ваше имя',
                        fillColor: Colors.white,
                        errorText: state.maybeMap(
                          failure: (f) => f.nameError,
                          orElse: () => null,
                        ),
                      ),
                    ),

                    Gap.v24,
                    TextField(
                      controller: _emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Ваш Email',
                        fillColor: Colors.white,
                        errorText: state.maybeMap(
                          failure: (f) => f.emailError,
                          orElse: () => null,
                        ),
                      ),
                    ),

                    Gap.v24,
                    TextField(
                      keyboardType: TextInputType.phone,
                      controller: _numberTextEditingController,
                      decoration: InputDecoration(
                        labelText: 'Ваш телефон',
                        hintText: '+996 (XXX) XXXXXXX',
                        fillColor: Colors.white,
                        errorText: state.maybeMap(
                          failure: (f) => f.phoneError,
                          orElse: () => null,
                        ),
                      ),
                    ),

                    Gap.v24,
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _invesionPasswordTextEditingController,
                      obscuringCharacter: '*',
                      style: getIt<AppTextStyles>().bodyLargeSemiBold.copyWith(
                        color: AppColors.onBackground,
                      ),
                      obscureText: isInvesionHidden,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Придумайте пароль',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isInvesionHidden = !isInvesionHidden;
                            });
                          },
                          child: Padding(
                            padding: .symmetric(
                              horizontal: 18.w,
                              vertical: 12.h,
                            ),
                            child: SvgPicture.asset(
                              isInvesionHidden
                                  ? hideEyeImagePath
                                  : showEyeImagePath,
                            ),
                          ),
                        ),
                        errorText: state.maybeMap(
                          failure: (f) => f.passwordError,
                          orElse: () => null,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),

                    Gap.v24,
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _repeatPasswordTextEditingController,
                      obscuringCharacter: '*',
                      style: getIt<AppTextStyles>().bodyLargeSemiBold.copyWith(
                        color: AppColors.onBackground,
                      ),
                      obscureText: isRepeatHidden,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: 'Повторите пароль',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isRepeatHidden = !isRepeatHidden;
                            });
                          },
                          child: Padding(
                            padding: .symmetric(
                              horizontal: 18.w,
                              vertical: 12.h,
                            ),
                            child: SvgPicture.asset(
                              isRepeatHidden
                                  ? hideEyeImagePath
                                  : showEyeImagePath,
                            ),
                          ),
                        ),
                        errorText: state.maybeMap(
                          failure: (f) => f.confirmPasswordError,
                          orElse: () => null,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),

                    Gap.v24,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: getIt<AppTextStyles>().caption.copyWith(
                          color: AppColors.neutral500,
                          height: 18 / 13,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Проходя регистрацию в приложении, вы\nсоглашаетесь ',
                          ),
                          TextSpan(
                            text: 'с правилами и условиями.',
                            style: TextStyle(color: AppColors.primary),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70.h),
                    SizedBox(
                      height: 56.h,
                      width: .infinity,
                      child: ElevatedButton(
                        onPressed: state.maybeMap(
                          loading: (_) => null,
                          orElse: () => () {
                            _authBloc.add(
                              AuthEvent.register(
                                params: RegisterParams(
                                  firstName: _nameTextEditingController.text,
                                  email: _emailTextEditingController.text,
                                  phone: _numberTextEditingController.text,
                                  password:
                                      _invesionPasswordTextEditingController
                                          .text,
                                  confirmPassword:
                                      _repeatPasswordTextEditingController.text,
                                ),
                              ),
                            );
                          },
                        ),
                        child: state.maybeMap(
                          loading: (_) => const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                          orElse: () => const Text('Зарегистрироваться'),
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
