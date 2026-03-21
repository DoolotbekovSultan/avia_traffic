// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aviatraffic/core/di/register_module.dart' as _i1056;
import 'package:aviatraffic/core/router/app_router.dart' as _i306;
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart'
    as _i831;
import 'package:aviatraffic/core/theme/text_styles/nunito_sans_text_styles.dart'
    as _i746;
import 'package:aviatraffic/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i1008;
import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart'
    as _i601;
import 'package:aviatraffic/features/auth/data/repositories/auth_repository.dart'
    as _i1010;
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart'
    as _i739;
import 'package:aviatraffic/features/auth/domain/usecases/register_usecase.dart'
    as _i144;
import 'package:aviatraffic/features/city_picker/data/datasources/city_picker_remote_datasource.dart'
    as _i783;
import 'package:aviatraffic/features/city_picker/data/datasources/i_city_picker_remote_datasource.dart'
    as _i367;
import 'package:aviatraffic/features/city_picker/data/repositories/city_picker_repository.dart'
    as _i1062;
import 'package:aviatraffic/features/city_picker/domain/repositories/i_city_picker_repository.dart'
    as _i475;
import 'package:aviatraffic/features/city_picker/domain/usecases/get_cities_usecase.dart'
    as _i834;
import 'package:aviatraffic/features/city_picker/domain/usecases/get_countries_usecase.dart'
    as _i1043;
import 'package:aviatraffic/features/city_picker/presentation/bloc/city_picker_bloc.dart'
    as _i227;
import 'package:aviatraffic/features/date_picker/data/repositories/date_picker_repository.dart'
    as _i532;
import 'package:aviatraffic/features/date_picker/domain/repositories/i_date_picker_repository.dart'
    as _i666;
import 'package:aviatraffic/features/date_picker/presentation/bloc/date_picker_bloc.dart'
    as _i812;
import 'package:aviatraffic/features/deals/data/datasources/deals_remote_datasource.dart'
    as _i276;
import 'package:aviatraffic/features/deals/data/datasources/i_deals_remote_datasource.dart'
    as _i247;
import 'package:aviatraffic/features/deals/data/repositories/deals_repository.dart'
    as _i412;
import 'package:aviatraffic/features/deals/domain/repositories/i_deals_repository.dart'
    as _i825;
import 'package:aviatraffic/features/deals/domain/usecases/get_deals_usecase.dart'
    as _i334;
import 'package:aviatraffic/features/deals/presentation/bloc/deals_bloc.dart'
    as _i99;
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
import 'package:aviatraffic/features/stories/data/datasources/i_stories_remote_datasource.dart'
    as _i302;
import 'package:aviatraffic/features/stories/data/datasources/stories_remote_datasources.dart'
    as _i59;
import 'package:aviatraffic/features/stories/data/repositories/stories_repository.dart'
    as _i933;
import 'package:aviatraffic/features/stories/domain/repositories/i_stories_repository.dart'
    as _i73;
import 'package:aviatraffic/features/stories/domain/usecases/get_stories_usecase.dart'
    as _i900;
import 'package:aviatraffic/features/stories/domain/usecases/get_story_by_id_usecase.dart'
    as _i896;
import 'package:aviatraffic/features/stories/presentation/bloc/stories/stories_bloc.dart'
    as _i731;
import 'package:aviatraffic/features/stories/presentation/bloc/story/story_bloc.dart'
    as _i193;
import 'package:dio/dio.dart' as _i361;
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
    gh.factory<_i812.DatePickerBloc>(() => _i812.DatePickerBloc());
    gh.singleton<_i306.AppRouter>(() => _i306.AppRouter());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i367.ICityPickerRemoteDatasource>(
      () => _i783.CityPickerRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i666.IDatePickerRepository>(
      () => _i532.DatePickerRepository(),
    );
    gh.lazySingleton<_i450.IOnboardingLocalDataSource>(
      () => _i993.OnboardingLocalDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i247.IDealsRemoteDatasource>(
      () => _i276.DealsRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i825.IDealsRepository>(
      () => _i412.DealsRepository(gh<_i247.IDealsRemoteDatasource>()),
    );
    gh.lazySingleton<_i601.IAuthRemoteDataSource>(
      () => _i1008.AuthRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i555.IOnboardingRemoteDatasource>(
      () => _i1015.OnboardingRemoteDatasource(),
    );
    gh.lazySingleton<_i524.IOnboardingRepository>(
      () => _i641.OnboardingRepository(
        gh<_i555.IOnboardingRemoteDatasource>(),
        gh<_i450.IOnboardingLocalDataSource>(),
      ),
    );
    gh.singleton<_i831.AppTextStyles>(() => const _i746.NunitoSansTextStyles());
    gh.lazySingleton<_i739.IAuthRepository>(
      () => _i1010.AuthRepository(gh<_i601.IAuthRemoteDataSource>()),
    );
    gh.lazySingleton<_i475.ICityPickerRepository>(
      () =>
          _i1062.CityPickerRepository(gh<_i367.ICityPickerRemoteDatasource>()),
    );
    gh.lazySingleton<_i302.IStoriesRemoteDatasource>(
      () => _i59.StoriesRemoteDatasources(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i334.GetDealsUsecase>(
      () => _i334.GetDealsUsecase(gh<_i825.IDealsRepository>()),
    );
    gh.factory<_i99.DealsBloc>(
      () => _i99.DealsBloc(gh<_i334.GetDealsUsecase>()),
    );
    gh.lazySingleton<_i335.SetOnboardingSeenUsecase>(
      () => _i335.SetOnboardingSeenUsecase(gh<_i524.IOnboardingRepository>()),
    );
    gh.lazySingleton<_i572.GetPagesUsecase>(
      () => _i572.GetPagesUsecase(gh<_i524.IOnboardingRepository>()),
    );
    gh.lazySingleton<_i733.IsOnboardingSeenUseCase>(
      () => _i733.IsOnboardingSeenUseCase(gh<_i524.IOnboardingRepository>()),
    );
    gh.lazySingleton<_i1043.GetCountriesUsecase>(
      () => _i1043.GetCountriesUsecase(gh<_i475.ICityPickerRepository>()),
    );
    gh.lazySingleton<_i834.GetCitiesUsecase>(
      () => _i834.GetCitiesUsecase(gh<_i475.ICityPickerRepository>()),
    );
    gh.lazySingleton<_i73.IStoriesRepository>(
      () => _i933.StoriesRepository(gh<_i302.IStoriesRemoteDatasource>()),
    );
    gh.lazySingleton<_i507.OnboardingBloc>(
      () => _i507.OnboardingBloc(
        getPagesUsecase: gh<_i572.GetPagesUsecase>(),
        setOnboardingSeenUsecase: gh<_i335.SetOnboardingSeenUsecase>(),
      ),
    );
    gh.lazySingleton<_i144.RegisterUseCase>(
      () => _i144.RegisterUseCase(gh<_i739.IAuthRepository>()),
    );
    gh.lazySingleton<_i900.GetStoriesUsecase>(
      () => _i900.GetStoriesUsecase(gh<_i73.IStoriesRepository>()),
    );
    gh.lazySingleton<_i896.GetStoryByIdUsecase>(
      () => _i896.GetStoryByIdUsecase(gh<_i73.IStoriesRepository>()),
    );
    gh.lazySingleton<_i731.StoriesBloc>(
      () => _i731.StoriesBloc(gh<_i900.GetStoriesUsecase>()),
    );
    gh.factory<_i227.CityPickerBloc>(
      () => _i227.CityPickerBloc(
        gh<_i834.GetCitiesUsecase>(),
        gh<_i1043.GetCountriesUsecase>(),
      ),
    );
    gh.factory<_i193.StoryBloc>(
      () => _i193.StoryBloc(gh<_i896.GetStoryByIdUsecase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i1056.RegisterModule {}
