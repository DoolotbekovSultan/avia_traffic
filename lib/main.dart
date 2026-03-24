import 'package:aviatraffic/core/bloc/locale/locale_bloc.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/localization/gen/l10n/app_localizations.dart';
import 'package:aviatraffic/core/theme/light_theme.dart';
import 'package:aviatraffic/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  await configureDependencies();
  await initializeDateFormatting('ru');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<LocaleBloc>()..add(const LocaleEvent.started()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocBuilder<LocaleBloc, LocaleState>(
            builder: (context, state) {
              return state.maybeMap(
                loaded: (s) => MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'Aviatraffic',
                  theme: LightTheme.themeData,
                  themeMode: ThemeMode.light,
                  locale: s.locale,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  routerConfig: appRouter.config(),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          );
        },
      ),
    );
  }
}
