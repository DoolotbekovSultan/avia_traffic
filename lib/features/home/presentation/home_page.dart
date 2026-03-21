import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/city_picker/presentation/bloc/city_picker_bloc.dart';
import 'package:aviatraffic/features/city_picker/presentation/widgets/city_picker_widget.dart';
import 'package:aviatraffic/features/date_picker/presentation/date_picker_sheet.dart';
import 'package:aviatraffic/features/home/presentation/widgets/currency_bottom_sheet.dart';
import 'package:aviatraffic/features/home/presentation/widgets/passengers_bottom_sheet.dart';
import 'package:aviatraffic/features/stories/presentation/widgets/stories_widget.dart';
import 'package:aviatraffic/features/deals/presentation/widgets/deals_widget.dart';
import 'package:aviatraffic/shared/presentation/widgets/avia_traffic_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildHeaderSection(), _buildBottomSection()],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .centerLeft,
          end: .centerRight,
          colors: [Color(0xFFF7C8C8), AppColors.primary],
          stops: [0.0, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            AviaTrafficAppBar(),
            Gap.v24,
            _SearchForm(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    final cs = Theme.of(context).colorScheme;

    return Container(
      color: cs.surfaceContainerLow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.v24,
          const StoriesWidget(),
          SizedBox(height: 18.h),
          DealsWidget(
            onClickBuyTicket: (deal) {
              // getIt<CityPickerBloc>().add()
            },
          ),
          Gap.v16,
        ],
      ),
    );
  }
}

class _SearchForm extends StatefulWidget {
  @override
  State<_SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<_SearchForm> {
  String _from = '';
  String _to = '';
  DateTime? _departDate;
  DateTime? _returnDate;
  String _currency = 'KGS';
  int adultCount = 0;
  int childCount = 0;
  int babyCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CityPickerWidget(
            initialFrom: _from,
            initialTo: _to,
            onChanged: _onCityChanged,
          ),
          Gap.v10,
          Row(
            children: [
              Expanded(
                child: _dateField(
                  label: 'Когда',
                  value: _formatDate(_departDate),
                  onTap: () => _selectDate(true),
                ),
              ),
              Gap.h10,
              Expanded(
                child: _dateField(
                  label: 'Обратно',
                  value: _formatDate(_returnDate),
                  onTap: () => _selectDate(false),
                ),
              ),
            ],
          ),
          Gap.v10,
          _selectField(
            label: 'Количество пассажиров',
            onTap: _showPassengersSheet,
            count: adultCount + childCount + babyCount,
          ),
          Gap.v10,
          _currencyField(),
          Gap.v16,
          SizedBox(
            width: double.infinity,
            height: 56.h,
            child: ElevatedButton(onPressed: () {}, child: Text('Поиск')),
          ),
        ],
      ),
    );
  }

  void _onCityChanged(String from, String to) {
    setState(() {
      _from = from;
      _to = to;
    });
  }

  Widget _dateField({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    final cs = Theme.of(context).colorScheme;
    final textStyles = getIt<AppTextStyles>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        padding: EdgeInsets.only(left: 16.w, right: 12.w),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value.isEmpty ? label : value,
                style: textStyles.bodyMediumSemiBold.copyWith(
                  height: 16 / 13,
                  color: value.isEmpty
                      ? AppColors.neutral500
                      : AppColors.onBackground,
                ),
              ),
            ),
            if (label == 'Когда')
              SvgPicture.asset(
                'assets/images/calendar.svg',
                height: 24.h,
                width: 24.w,
              ),
          ],
        ),
      ),
    );
  }

  Widget _selectField({
    required String label,
    required VoidCallback onTap,
    required int count,
  }) {
    final cs = Theme.of(context).colorScheme;

    final textStyles = getIt<AppTextStyles>();

    final hintTextStyle = textStyles.bodyMediumSemiBold.copyWith(
      height: 16 / 13,
      color: AppColors.neutral500,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: count == 0
                  ? Text(label, style: hintTextStyle)
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Кол-во пассажиоров',
                          style: textStyles.caption.copyWith(
                            height: 16 / 13,
                            color: AppColors.neutral500,
                          ),
                        ),
                        Text(
                          count.toString(),
                          style: textStyles.bodyMediumSemiBold.copyWith(
                            height: 16 / 13,
                            color: AppColors.onBackground,
                          ),
                        ),
                      ],
                    ),
            ),
            SvgPicture.asset(
              'assets/images/arrow.svg',
              height: 16.h,
              width: 16.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget _currencyField() {
    final cs = Theme.of(context).colorScheme;
    final smallHintStyle = getIt<AppTextStyles>().caption.copyWith(
      height: 16 / 13,
      color: AppColors.neutral500,
    );

    final mainTextStyle = getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
      color: AppColors.onBackground,
      height: 16 / 13,
    );

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 48),
      child: GestureDetector(
        onTap: _showCurrencySheet,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
          decoration: BoxDecoration(
            color: cs.surface,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Валюта', style: smallHintStyle),
                    Text(_currency, style: mainTextStyle),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/images/arrow.svg',
                height: 16.h,
                width: 16.w,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCurrencySheet() {
    showModalBottomSheet(
      showDragHandle: false,
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => CurrencyBottomSheet(
        selected: _currency,
        onSelected: (value) => setState(() => _currency = value),
      ),
    );
  }

  void _showPassengersSheet() {
    showModalBottomSheet(
      context: context,
      showDragHandle: false,
      backgroundColor: Colors.transparent,
      builder: (_) => PassengersBottomSheet(
        adultCount: adultCount,
        childCount: childCount,
        babyCount: babyCount,
        update: (a, c, b) {
          setState(() {
            adultCount = a;
            childCount = c;
            babyCount = b;
          });
        },
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    const months = [
      'января',
      'февраля',
      'марта',
      'апреля',
      'мая',
      'июня',
      'июля',
      'августа',
      'сентября',
      'октября',
      'ноября',
      'декабря',
    ];
    const weekdays = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
    return '${date.day} ${months[date.month - 1]}, ${weekdays[date.weekday - 1]}';
  }

  Future<void> _selectDate(bool isDeparture) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: false,
      backgroundColor: Colors.transparent,
      builder: (_) => DatePickerSheet(
        initialDate: _departDate,
        initialReturnDate: _returnDate,
        onConfirm: (depart, ret) {
          setState(() {
            _departDate = depart;
            _returnDate = ret;
          });
        },
        prices: const {},
      ),
    );
  }
}
