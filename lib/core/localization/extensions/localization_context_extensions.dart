import 'package:aviatraffic/core/localization/gen/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/// Расширения для [BuildContext] для удобного доступа к локализации.
extension LocalizationContextExtensions on BuildContext {
  /// Локализованные строки приложения.
  AppLocalizations get loc => AppLocalizations.of(this);

  /// Текущая локаль приложения.
  Locale get currentLocale => Localizations.localeOf(this);

  /// Алиас для [loc] (сокращение).
  AppLocalizations get l10n => loc;

  // ПРОВЕРКИ ЯЗЫКОВ

  bool get isRussian => currentLocale.languageCode == 'ru';
  bool get isEnglish => currentLocale.languageCode == 'en';
  bool get isKyrgyz => currentLocale.languageCode == 'ky';

  // ГЕТТЕРЫ ДЛЯ СТРОК

  String get appName => loc.app_name;
  String get loading => loc.loading;
  String get pleaseWait => loc.please_wait;
  String get error => loc.error;
  String get retry => loc.retry;
  String get cancel => loc.cancel;
  String get confirm => loc.confirm;
  String get done => loc.done;
  String get next => loc.next;
  String get back => loc.back;
  String get skip => loc.skip;
  String get close => loc.close;
  String get save => loc.save;
  String get search => loc.search;

  String get home => loc.home;
  String get profile => loc.profile;
  String get registration => loc.registration;
  String get services => loc.services;
  String get flightStatus => loc.flight_status;
  String get settings => loc.settings;

  String get from => loc.from;
  String get to => loc.to;
  String get when => loc.when;
  String get backTrip => loc.back_trip;
  String get passengers => loc.passengers;
  String get currency => loc.currency;
  String get buyTicket => loc.buy_ticket;
  String get hotDeals => loc.hot_deals;
  String get noDeals => loc.no_deals;
  String get readMore => loc.read_more;
  String get noReturnNeeded => loc.no_return_needed;

  String get adults => loc.adults;
  String get children => loc.children;
  String get infants => loc.infants;
  String get passengerCount => loc.passenger_count;

  String get networkError => loc.network_error;
  String get serverError => loc.server_error;
  String get unknownError => loc.unknown_error;

  String get fieldRequired => loc.field_required;
  String get invalidEmail => loc.invalid_email;
  String get invalidPhone => loc.invalid_phone;

  String get selectCount => loc.select_count;
  String get adultLabel => loc.adult_label;
  String get childLabel => loc.child_label;
  String get infantLabel => loc.infant_label;

  String get january => loc.january;
  String get february => loc.february;
  String get march => loc.march;
  String get april => loc.april;
  String get may => loc.may;
  String get june => loc.june;
  String get july => loc.july;
  String get august => loc.august;
  String get september => loc.september;
  String get october => loc.october;
  String get november => loc.november;
  String get december => loc.december;

  String get monday_short => loc.monday_short;
  String get tuesday_short => loc.tuesday_short;
  String get wednesday_short => loc.wednesday_short;
  String get thursday_short => loc.thursday_short;
  String get friday_short => loc.friday_short;
  String get saturday_short => loc.saturday_short;
  String get sunday_short => loc.sunday_short;
}
