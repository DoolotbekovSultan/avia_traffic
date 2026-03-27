import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/auth/domain/usecases/login_usecase.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:aviatraffic/shared/presentation/widgets/custom_text_field.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

const hideEyeImagePath = 'assets/images/hide_eye.svg';
const showEyeImagePath = 'assets/images/show_eye.svg';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _numberTextEditingController;
  late final TextEditingController _passwordTextEditingController;
  bool _loginButtonIsActive = false;
  bool isHidden = true;

  @override
  void initState() {
    _numberTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _numberTextEditingController.addListener(() {
      setState(() {
        _loginButtonIsActive =
            _numberTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty;
      });
    });
    _passwordTextEditingController.addListener(() {
      setState(() {
        _loginButtonIsActive =
            _numberTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _numberTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            success: (_) => context.router.replaceAll([const MainRoute()]),
            failure: (f) {
              setState(() {
                _loginButtonIsActive = false;
              });

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(f.failure.userMessage)));
            },
            incorrectPhoneOrNumber: (f) => setState(() {
              _loginButtonIsActive = false;
            }),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: 'Вход'),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: LayoutBuilder(
                builder: (context, constaints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constaints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 88.h),
                            Text(
                              "🔐 Вход",
                              style: getIt<AppTextStyles>().headlineMediumBold
                                  .copyWith(color: AppColors.onBackground),
                            ),
                            Gap.v12,
                            Text(
                              'Уважаемый пользователь,\nвыполните вход в приложение',
                              textAlign: TextAlign.center,
                              style: getIt<AppTextStyles>().bodyMediumSemiBold
                                  .copyWith(
                                    color: AppColors.onBackground,
                                    height: 24 / 15,
                                  ),
                            ),
                            SizedBox(height: 43.h),
                            CustomTextField(
                              errorText: state.maybeMap(
                                failure: (f) => f.phoneError,
                                orElse: () => null,
                              ),
                              labelText: 'Ваш номер',
                              hintText: '+996 (XXX) XXXXXXX',
                              hasError: state.maybeMap(
                                incorrectPhoneOrNumber: (f) => true,
                                orElse: () => false,
                              ),
                              keyboardType: TextInputType.phone,
                              textEditingController:
                                  _numberTextEditingController,
                            ),

                            Gap.v24,

                            CustomTextField(
                              keyboardType: TextInputType.visiblePassword,
                              textEditingController:
                                  _passwordTextEditingController,
                              obscureText: isHidden,
                              obscuringCharacter: '*',
                              hintText: 'Введите пароль',
                              errorText: state.maybeMap(
                                failure: (value) => value.passwordError,
                                incorrectPhoneOrNumber: (f) =>
                                    "Неверный номер телефона или пароль",
                                orElse: () => null,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isHidden = !isHidden;
                                  });
                                },
                                child: SvgPicture.asset(
                                  isHidden
                                      ? hideEyeImagePath
                                      : showEyeImagePath,
                                  width: 24.w,
                                  height: 24.h,
                                ),
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
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ],
                              ),
                            ),
                            Gap.v24,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 18.h,
                                  width: 18.w,
                                  child: Checkbox(value: true, onChanged: null),
                                ),
                                SizedBox(width: 13.w),
                                Text(
                                  'Запомнить данные при повторном входе',
                                  style: getIt<AppTextStyles>().caption
                                      .copyWith(
                                        color: AppColors.onBackground,
                                        height: 0,
                                      ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Gap.v16,
                            Container(
                              padding: EdgeInsets.only(
                                left: 38.w,
                                right: 51.5.w,
                              ),
                              height: 48.h,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () => context.router.push(
                                      ForgotPasswordRoute(),
                                    ),
                                    child: Text(
                                      'Забыли пароль?',
                                      style: getIt<AppTextStyles>()
                                          .bodyMediumSemiBold
                                          .copyWith(
                                            color: Color(0xFF3B53CA),
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xFF3B53CA),
                                            decorationThickness: 2,
                                          ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => context.router.push(
                                      AuthRegistrationRoute(),
                                    ),
                                    child: Text(
                                      'Регистрация',
                                      style: getIt<AppTextStyles>()
                                          .bodyMediumSemiBold
                                          .copyWith(
                                            color: Color(0xFF3B53CA),
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xFF3B53CA),
                                            decorationThickness: 2,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap.v24,
                            SizedBox(
                              height: 56.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: !_loginButtonIsActive
                                    ? null
                                    : state.maybeMap(
                                        loading: (_) => null,
                                        orElse: () => () {
                                          context.read<AuthBloc>().add(
                                            AuthEvent.login(
                                              params: LoginParams(
                                                phone:
                                                    _numberTextEditingController
                                                        .text,
                                                password:
                                                    _passwordTextEditingController
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
                                  orElse: () => const Text('Войти'),
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
