// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aviatraffic/core/bloc/locale/locale_bloc.dart' as _i672;
import 'package:aviatraffic/core/di/register_module.dart' as _i1056;
import 'package:aviatraffic/core/localization/system_locale_service.dart'
    as _i865;
import 'package:aviatraffic/core/router/app_router.dart' as _i306;
import 'package:aviatraffic/core/router/guards/onboarding_guard.dart' as _i785;
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart'
    as _i831;
import 'package:aviatraffic/core/theme/text_styles/nunito_sans_text_styles.dart'
    as _i746;
import 'package:aviatraffic/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i1008;
import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart'
    as _i601;
import 'package:aviatraffic/features/auth/data/datasources/I_token_local_datasource.dart'
    as _i209;
import 'package:aviatraffic/features/auth/data/datasources/token_local_datasource.dart'
    as _i566;
import 'package:aviatraffic/features/auth/data/repositories/auth_repository.dart'
    as _i1010;
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart'
    as _i739;
import 'package:aviatraffic/features/auth/domain/usecases/confirm_code_usecase.dart'
    as _i461;
import 'package:aviatraffic/features/auth/domain/usecases/delete_account_usecase.dart'
    as _i933;
import 'package:aviatraffic/features/auth/domain/usecases/forgot_password_usecase.dart'
    as _i1059;
import 'package:aviatraffic/features/auth/domain/usecases/get_personal_info_usecase.dart'
    as _i230;
import 'package:aviatraffic/features/auth/domain/usecases/get_token_usecase.dart'
    as _i968;
import 'package:aviatraffic/features/auth/domain/usecases/login_usecase.dart'
    as _i148;
import 'package:aviatraffic/features/auth/domain/usecases/logout_usecase.dart'
    as _i1036;
import 'package:aviatraffic/features/auth/domain/usecases/modify_password_usecase.dart'
    as _i244;
import 'package:aviatraffic/features/auth/domain/usecases/modify_personal_usecase.dart'
    as _i453;
import 'package:aviatraffic/features/auth/domain/usecases/register_usecase.dart'
    as _i144;
import 'package:aviatraffic/features/auth/domain/usecases/resend_email_usecase.dart'
    as _i324;
import 'package:aviatraffic/features/auth/presentation/bloc/auth/auth_bloc.dart'
    as _i62;
import 'package:aviatraffic/features/home/features/city_picker/data/datasources/city_picker_remote_datasource.dart'
    as _i460;
import 'package:aviatraffic/features/home/features/city_picker/data/datasources/i_city_picker_remote_datasource.dart'
    as _i21;
import 'package:aviatraffic/features/home/features/city_picker/data/repositories/city_picker_repository.dart'
    as _i202;
import 'package:aviatraffic/features/home/features/city_picker/domain/repositories/i_city_picker_repository.dart'
    as _i331;
import 'package:aviatraffic/features/home/features/city_picker/domain/usecases/get_cities_usecase.dart'
    as _i589;
import 'package:aviatraffic/features/home/features/city_picker/domain/usecases/get_countries_usecase.dart'
    as _i243;
import 'package:aviatraffic/features/home/features/city_picker/presentation/bloc/city_list_bloc.dart'
    as _i982;
import 'package:aviatraffic/features/home/features/city_picker/presentation/bloc/city_picker_bloc.dart'
    as _i1029;
import 'package:aviatraffic/features/home/features/date_picker/presentation/bloc/date_picker_bloc.dart'
    as _i475;
import 'package:aviatraffic/features/home/features/deals/data/datasources/deals_remote_datasource.dart'
    as _i463;
import 'package:aviatraffic/features/home/features/deals/data/datasources/i_deals_remote_datasource.dart'
    as _i733;
import 'package:aviatraffic/features/home/features/deals/data/repositories/deals_repository.dart'
    as _i596;
import 'package:aviatraffic/features/home/features/deals/domain/repositories/i_deals_repository.dart'
    as _i884;
import 'package:aviatraffic/features/home/features/deals/domain/usecases/get_deals_usecase.dart'
    as _i308;
import 'package:aviatraffic/features/home/features/deals/presentation/bloc/deals_bloc.dart'
    as _i812;
import 'package:aviatraffic/features/home/features/stories/data/datasources/i_stories_remote_datasource.dart'
    as _i1044;
import 'package:aviatraffic/features/home/features/stories/data/datasources/stories_remote_datasources.dart'
    as _i23;
import 'package:aviatraffic/features/home/features/stories/data/repositories/stories_repository.dart'
    as _i1037;
import 'package:aviatraffic/features/home/features/stories/domain/repositories/i_stories_repository.dart'
    as _i520;
import 'package:aviatraffic/features/home/features/stories/domain/usecases/get_stories_usecase.dart'
    as _i656;
import 'package:aviatraffic/features/home/features/stories/domain/usecases/get_story_by_id_usecase.dart'
    as _i283;
import 'package:aviatraffic/features/home/features/stories/presentation/bloc/stories/stories_bloc.dart'
    as _i710;
import 'package:aviatraffic/features/home/features/stories/presentation/bloc/story/story_bloc.dart'
    as _i1032;
import 'package:aviatraffic/features/onboarding/data/datasources/impl/onboarding_local_datasource.dart'
    as _i993;
import 'package:aviatraffic/features/onboarding/data/datasources/impl/onboarding_remote_datasource.dart'
    as _i1015;
import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_local_datasource.dart'
    as _i450;
import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_remote_datasource.dart'
    as _i555;
import 'package:aviatraffic/features/onboarding/data/repositories/onboarding_repository.dart'
    as _i641;
import 'package:aviatraffic/features/onboarding/domain/repositories/i_onboarding_repository.dart'
    as _i524;
import 'package:aviatraffic/features/onboarding/domain/usecases/get_pages_usecase.dart'
    as _i572;
import 'package:aviatraffic/features/onboarding/domain/usecases/is_onboarding_seen_usecase.dart'
    as _i733;
import 'package:aviatraffic/features/onboarding/domain/usecases/set_onboarding_seen_usecase.dart'
    as _i335;
import 'package:aviatraffic/features/onboarding/presentation/bloc/onboarding_bloc.dart'
    as _i507;
import 'package:aviatraffic/features/profile/bloc/profile_bloc.dart' as _i844;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i475.DatePickerBloc>(() => _i475.DatePickerBloc());
    gh.singleton<_i306.AppRouter>(() => _i306.AppRouter());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i865.SystemLocaleService>(
      () => _i865.SystemLocaleService(),
    );
    gh.lazySingleton<_i1029.CityPickerBloc>(() => _i1029.CityPickerBloc());
    gh.lazySingleton<_i733.IDealsRemoteDatasource>(
      () => _i463.DealsRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i209.ITokenLocalDatasource>(
      () =>
          _i566.TokenLocalDatasource(storage: gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i1044.IStoriesRemoteDatasource>(
      () => _i23.StoriesRemoteDatasources(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i21.ICityPickerRemoteDatasource>(
      () => _i460.CityPickerRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i555.IOnboardingRemoteDatasource>(
      () => _i1015.OnboardingRemoteDatasource(),
    );
    gh.lazySingleton<_i601.IAuthRemoteDataSource>(
      () => _i1008.AuthRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.singleton<_i831.AppTextStyles>(() => const _i746.NunitoSansTextStyles());
    gh.lazySingleton<_i331.ICityPickerRepository>(
      () => _i202.CityPickerRepository(gh<_i21.ICityPickerRemoteDatasource>()),
    );
    gh.lazySingleton<_i672.LocaleBloc>(
      () => _i672.LocaleBloc(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i739.IAuthRepository>(
      () => _i1010.AuthRepository(
        gh<_i601.IAuthRemoteDataSource>(),
        gh<_i209.ITokenLocalDatasource>(),
      ),
    );
    gh.lazySingleton<_i589.GetCitiesUsecase>(
      () => _i589.GetCitiesUsecase(gh<_i331.ICityPickerRepository>()),
    );
    gh.lazySingleton<_i243.GetCountriesUsecase>(
      () => _i243.GetCountriesUsecase(gh<_i331.ICityPickerRepository>()),
    );
    gh.lazySingleton<_i461.ConfirmCodeUseCase>(
      () => _i461.ConfirmCodeUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i933.DeleteAccountUseCase>(
      () => _i933.DeleteAccountUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i1059.ForgotPasswordUseCase>(
      () => _i1059.ForgotPasswordUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i230.GetPersonalInfoUseCase>(
      () => _i230.GetPersonalInfoUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i968.GetTokenUseCase>(
      () => _i968.GetTokenUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i148.LoginUseCase>(
      () => _i148.LoginUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i1036.LogoutUseCase>(
      () => _i1036.LogoutUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i244.ModifyPasswordUseCase>(
      () => _i244.ModifyPasswordUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i453.ModifyPersonalUseCase>(
      () => _i453.ModifyPersonalUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i144.RegisterUseCase>(
      () => _i144.RegisterUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i324.ResendEmailUseCase>(
      () => _i324.ResendEmailUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i884.IDealsRepository>(
      () => _i596.DealsRepository(gh<_i733.IDealsRemoteDatasource>()),
    );
    gh.lazySingleton<_i450.IOnboardingLocalDataSource>(
      () => _i993.OnboardingLocalDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i520.IStoriesRepository>(
      () => _i1037.StoriesRepository(gh<_i1044.IStoriesRemoteDatasource>()),
    );
    gh.lazySingleton<_i656.GetStoriesUsecase>(
      () => _i656.GetStoriesUsecase(gh<_i520.IStoriesRepository>()),
    );
    gh.lazySingleton<_i283.GetStoryByIdUsecase>(
      () => _i283.GetStoryByIdUsecase(gh<_i520.IStoriesRepository>()),
    );
    gh.lazySingleton<_i982.CityListBloc>(
      () => _i982.CityListBloc(
        gh<_i589.GetCitiesUsecase>(),
        gh<_i243.GetCountriesUsecase>(),
      ),
    );
    gh.lazySingleton<_i524.IOnboardingRepository>(
      () => _i641.OnboardingRepository(
        gh<_i555.IOnboardingRemoteDatasource>(),
        gh<_i450.IOnboardingLocalDataSource>(),
      ),
    );
    gh.factory<_i844.ProfileBloc>(
      () => _i844.ProfileBloc(gh<_i230.GetPersonalInfoUseCase>()),
    );
    gh.factory<_i1032.StoryBloc>(
      () => _i1032.StoryBloc(gh<_i283.GetStoryByIdUsecase>()),
    );
    gh.lazySingleton<_i572.GetPagesUsecase>(
      () => _i572.GetPagesUsecase(gh<_i524.IOnboardingRepository>()),
    );
    gh.lazySingleton<_i733.IsOnboardingSeenUseCase>(
      () => _i733.IsOnboardingSeenUseCase(gh<_i524.IOnboardingRepository>()),
    );
    gh.lazySingleton<_i335.SetOnboardingSeenUsecase>(
      () => _i335.SetOnboardingSeenUsecase(gh<_i524.IOnboardingRepository>()),
    );
    gh.factory<_i62.AuthBloc>(
      () => _i62.AuthBloc(
        gh<_i148.LoginUseCase>(),
        gh<_i144.RegisterUseCase>(),
        gh<_i1036.LogoutUseCase>(),
        gh<_i1059.ForgotPasswordUseCase>(),
        gh<_i244.ModifyPasswordUseCase>(),
        gh<_i461.ConfirmCodeUseCase>(),
        gh<_i324.ResendEmailUseCase>(),
      ),
    );
    gh.lazySingleton<_i308.GetDealsUsecase>(
      () => _i308.GetDealsUsecase(gh<_i884.IDealsRepository>()),
    );
    gh.lazySingleton<_i710.StoriesBloc>(
      () => _i710.StoriesBloc(gh<_i656.GetStoriesUsecase>()),
    );
    gh.factory<_i785.OnboardingGuard>(
      () => _i785.OnboardingGuard(gh<_i733.IsOnboardingSeenUseCase>()),
    );
    gh.lazySingleton<_i507.OnboardingBloc>(
      () => _i507.OnboardingBloc(
        getPagesUsecase: gh<_i572.GetPagesUsecase>(),
        setOnboardingSeenUsecase: gh<_i335.SetOnboardingSeenUsecase>(),
      ),
    );
    gh.factory<_i812.DealsBloc>(
      () => _i812.DealsBloc(gh<_i308.GetDealsUsecase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i1056.RegisterModule {}
