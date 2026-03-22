import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

@lazySingleton
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final SharedPreferences _prefs;
  static const String _localeKey = 'app_locale';

  LocaleBloc(this._prefs) : super(const LocaleState.initial()) {
    on<LocaleEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          final savedLocale = _prefs.getString(_localeKey);
          if (savedLocale != null) {
            emit(LocaleState.loaded(Locale(savedLocale)));
          } else {
            // По умолчанию русский
            emit(const LocaleState.loaded(Locale('ru')));
          }
        },
        changed: (e) async {
          await _prefs.setString(_localeKey, e.locale.languageCode);
          emit(LocaleState.loaded(e.locale));
        },
      );
    });
  }
}
