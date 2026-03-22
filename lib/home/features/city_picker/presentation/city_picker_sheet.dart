import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/home/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/home/features/city_picker/presentation/bloc/city_list_bloc.dart';
import 'package:aviatraffic/shared/presentation/widgets/drag_handle.dart';
import 'package:aviatraffic/shared/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CityPickerSheet extends StatefulWidget {
  final bool isFrom;

  const CityPickerSheet({super.key, required this.isFrom});

  @override
  State<CityPickerSheet> createState() => _CityPickerSheetState();
}

class _CityPickerSheetState extends State<CityPickerSheet> {
  @override
  void initState() {
    super.initState();
    final bloc = getIt<CityListBloc>();
    final state = bloc.state;

    state.maybeMap(
      loading: (_) => null,
      citiesLoaded: (s) {
        if (!widget.isFrom) bloc.add(const CityListEvent.getCountries());
      },
      countriesLoaded: (s) {
        if (widget.isFrom) bloc.add(const CityListEvent.getCities());
      },
      orElse: () {
        bloc.add(
          widget.isFrom
              ? const CityListEvent.getCities()
              : const CityListEvent.getCountries(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CityListBloc>(),
      child: _CityPickerView(isFrom: widget.isFrom),
    );
  }
}

class _CityPickerView extends StatefulWidget {
  final bool isFrom;

  const _CityPickerView({required this.isFrom});

  @override
  State<_CityPickerView> createState() => _CityPickerViewState();
}

class _CityPickerViewState extends State<_CityPickerView> {
  final TextEditingController _ctrl = TextEditingController();
  Country? _selectedCountry;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();
    return BlocBuilder<CityListBloc, CityListState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => _PickerShell(
            title: widget.isFrom ? 'Откуда' : 'Куда',
            searchHint: widget.isFrom ? 'Откуда' : 'Куда',
            controller: _ctrl,
            child: const LoadingWidget(),
          ),
          loading: (_) => _PickerShell(
            title: widget.isFrom ? 'Откуда' : 'Куда',
            searchHint: widget.isFrom ? 'Откуда' : 'Куда',
            controller: _ctrl,
            child: const LoadingWidget(),
          ),
          failure: (f) => _PickerShell(
            title: 'Ошибка',
            searchHint: 'Поиск',
            controller: _ctrl,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  f.failure.toString(),
                  textAlign: TextAlign.center,
                  style: textStyles.bodyMedium,
                ),
              ),
            ),
          ),
          citiesLoaded: (s) {
            final q = _ctrl.text.toLowerCase();
            final filtered = q.isEmpty
                ? s.cities
                : s.cities
                      .where(
                        (c) =>
                            c.name.toLowerCase().contains(q) ||
                            c.country.toLowerCase().contains(q),
                      )
                      .toList();

            return _PickerShell(
              title: 'Откуда',
              searchHint: 'Откуда',
              controller: _ctrl,
              onChanged: (_) => setState(() {}),
              child: filtered.isEmpty
                  ? _EmptySearch()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filtered.length,
                      itemBuilder: (_, i) => Padding(
                        padding: .only(bottom: 24.h),
                        child: _CityRow(
                          city: filtered[i],
                          onTap: () => Navigator.pop(context, filtered[i]),
                        ),
                      ),
                    ),
            );
          },
          countriesLoaded: (s) {
            if (_selectedCountry != null) {
              final q = _ctrl.text.toLowerCase();
              final filteredCities = q.isEmpty
                  ? _selectedCountry!.cities
                  : _selectedCountry!.cities
                        .where(
                          (c) =>
                              c.name.toLowerCase().contains(q) ||
                              c.country.toLowerCase().contains(q),
                        )
                        .toList();

              return _PickerShell(
                title: 'Куда / ${_selectedCountry!.name}',
                searchHint: 'Поиск города',
                controller: _ctrl,
                onChanged: (_) => setState(() {}),
                showClose: true,
                child: filteredCities.isEmpty
                    ? _EmptySearch()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: filteredCities.length,
                        itemBuilder: (_, i) => Padding(
                          padding: .only(bottom: 24.h),
                          child: _CityRow(
                            city: filteredCities[i],
                            onTap: () =>
                                Navigator.pop(context, filteredCities[i]),
                          ),
                        ),
                      ),
              );
            }

            final q = _ctrl.text.toLowerCase();
            final filteredCountries = q.isEmpty
                ? s.countries
                : s.countries
                      .where((c) => c.name.toLowerCase().contains(q))
                      .toList();

            return _PickerShell(
              title: 'Куда',
              searchHint: 'Куда',
              controller: _ctrl,
              onChanged: (_) => setState(() {}),
              child: filteredCountries.isEmpty
                  ? _EmptySearch()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredCountries.length,
                      itemBuilder: (_, i) => Padding(
                        padding: .only(bottom: 24.h),
                        child: _CountryRow(
                          country: filteredCountries[i],
                          onTap: () => setState(() {
                            _selectedCountry = filteredCountries[i];
                            _ctrl.clear();
                          }),
                        ),
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}

class _PickerShell extends StatelessWidget {
  final String title;
  final String searchHint;
  final TextEditingController controller;
  final Widget child;
  final Widget? leadingAction;
  final bool showClose;
  final ValueChanged<String>? onChanged;

  const _PickerShell({
    required this.title,
    required this.searchHint,
    required this.controller,
    required this.child,
    this.leadingAction,
    this.showClose = true,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Padding(
              padding: .symmetric(vertical: 7.h),
              child: DragHandle(),
            ),
          ),
          Gap.v16,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                if (leadingAction != null) ...[leadingAction!, Gap.h4],
                Expanded(
                  child: Text(
                    title,
                    style: getIt<AppTextStyles>().titleMediumBold.copyWith(
                      color: AppColors.onBackground,
                    ),
                  ),
                ),
                if (showClose)
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      'assets/images/close.svg',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
              ],
            ),
          ),
          Gap.v24,
          Padding(
            padding: .symmetric(horizontal: 16.w),
            child: _SearchField(
              controller: controller,
              hint: searchHint,
              onChanged: onChanged,
            ),
          ),
          Gap.v24,
          Flexible(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: child,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 8.h),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final ValueChanged<String>? onChanged;

  const _SearchField({
    required this.controller,
    required this.hint,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        final hasText = value.text.isNotEmpty;
        return Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                textAlignVertical: TextAlignVertical.center,
                style: textStyles.bodyMediumSemiBold.copyWith(
                  color: AppColors.onBackground,
                ),
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: textStyles.bodyMediumSemiBold.copyWith(
                    color: AppColors.neutral500,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 56.w,
                    minHeight: 48.h,
                  ),
                  filled: true,
                  fillColor: AppColors.neutral100,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Image.asset(
                      'assets/images/search.png',
                      color: AppColors.onBackground,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                ),
              ),
            ),
            if (hasText) ...[
              SizedBox(width: 16.w),
              GestureDetector(
                onTap: () {
                  controller.clear();
                  onChanged?.call('');
                  FocusScope.of(context).unfocus();
                },
                child: Text(
                  'Отмена',
                  style: textStyles.bodyMediumSemiBold.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _CityRow extends StatelessWidget {
  final City city;
  final VoidCallback onTap;

  const _CityRow({required this.city, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: .symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    city.name,
                    style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                      color: AppColors.onBackground,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    city.country,
                    style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                      color: AppColors.neutral500,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              city.codeName,
              style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                color: AppColors.neutral500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CountryRow extends StatelessWidget {
  final Country country;
  final VoidCallback onTap;

  const _CountryRow({required this.country, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: .symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name,
                  style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                    color: AppColors.onBackground,
                    height: 1,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  '${country.directions} направлений',
                  style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                    color: AppColors.neutral500,
                    height: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptySearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.w),
      child: Center(
        child: Text(
          'Ничего не найдено',
          style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
            color: AppColors.neutral500,
          ),
        ),
      ),
    );
  }
}
