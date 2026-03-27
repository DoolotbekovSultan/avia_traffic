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
  bool _registerButtonIsActive = false;
  bool isInvesionHidden = true;
  bool isRepeatHidden = true;

  void updateAvtiveButtonFlag() {
    setState(() {
      _registerButtonIsActive =
          _nameTextEditingController.text.isNotEmpty &&
          _emailTextEditingController.text.isNotEmpty &&
          _numberTextEditingController.text.isNotEmpty &&
          _invesionPasswordTextEditingController.text.isNotEmpty &&
          _repeatPasswordTextEditingController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();
    _nameTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _numberTextEditingController = TextEditingController();
    _invesionPasswordTextEditingController = TextEditingController();
    _repeatPasswordTextEditingController = TextEditingController();
    final controllers = [
      _nameTextEditingController,
      _emailTextEditingController,
      _numberTextEditingController,
      _invesionPasswordTextEditingController,
      _repeatPasswordTextEditingController,
    ];
    for (final controller in controllers) {
      controller.addListener(updateAvtiveButtonFlag);
    }
    super.initState();
  }

  @override
  void dispose() {
    _authBloc.close();
    _nameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _numberTextEditingController.dispose();
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
            authenticated: (_) => context.router.push(
              ConfirmCodeRoute(
                onSuccess: () => context.router.replaceAll([const MainRoute()]),
                email: _emailTextEditingController.text,
                title: "Регистрация",
              ),
            ),
            failure: (f) {},
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: GradientAppBar(title: 'Регистрация'),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: LayoutBuilder(
                builder: (context, constrains) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constrains.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 88.h),
                            Text(
                              "Регистрация",
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
                              textEditingController: _nameTextEditingController,
                              keyboardType: TextInputType.name,
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              errorText: state.maybeMap(
                                failure: (f) => f.nameError,
                                orElse: () => null,
                              ),
                              hintText: 'Ваше имя',
                              labelAlways: false,
                              labelText: "Ваше имя",
                            ),
                            Gap.v24,
                            CustomTextField(
                              textEditingController:
                                  _emailTextEditingController,
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
                            Gap.v24,
                            CustomTextField(
                              errorText: state.maybeMap(
                                failure: (f) => f.phoneError,
                                orElse: () => null,
                              ),
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
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
                                  _invesionPasswordTextEditingController,
                              obscureText: isInvesionHidden,
                              obscuringCharacter: '*',
                              hintText: 'Придумайте пароль',
                              errorText: state.maybeMap(
                                failure: (value) => value.passwordError,
                                orElse: () => null,
                              ),
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isInvesionHidden = !isInvesionHidden;
                                  });
                                },
                                child: SvgPicture.asset(
                                  isInvesionHidden
                                      ? hideEyeImagePath
                                      : showEyeImagePath,
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),
                            Gap.v24,
                            CustomTextField(
                              keyboardType: TextInputType.visiblePassword,
                              textEditingController:
                                  _repeatPasswordTextEditingController,
                              obscureText: isRepeatHidden,
                              obscuringCharacter: '*',
                              hintText: 'Повторите пароль',
                              errorText: state.maybeMap(
                                failure: (value) => value.passwordError,
                                orElse: () => null,
                              ),
                              readOnly: state.maybeMap(
                                authenticated: (_) => true,
                                orElse: () => false,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isRepeatHidden = !isRepeatHidden;
                                  });
                                },
                                child: SvgPicture.asset(
                                  isRepeatHidden
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
                            Gap.v16,
                            const Spacer(),
                            SizedBox(
                              height: 56.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: !_registerButtonIsActive
                                    ? null
                                    : state.maybeMap(
                                        loading: (_) => null,
                                        orElse: () => () {
                                          _authBloc.add(
                                            AuthEvent.register(
                                              params: RegisterParams(
                                                firstName:
                                                    _nameTextEditingController
                                                        .text,
                                                email:
                                                    _emailTextEditingController
                                                        .text,
                                                phone:
                                                    _numberTextEditingController
                                                        .text,
                                                password:
                                                    _invesionPasswordTextEditingController
                                                        .text,
                                                confirmPassword:
                                                    _repeatPasswordTextEditingController
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
                                  orElse: () =>
                                      const Text('Зарегистрироваться'),
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
