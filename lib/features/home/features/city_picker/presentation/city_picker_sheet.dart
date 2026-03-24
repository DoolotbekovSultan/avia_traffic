import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/home/features/city_picker/presentation/bloc/city_list_bloc.dart';
import 'package:aviatraffic/shared/presentation/widgets/bottom_sheet_header.dart';
import 'package:aviatraffic/shared/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      loaded: (s) {
        if (widget.isFrom && s.cities.isEmpty) {
          bloc.add(const CityListEvent.getCities());
        } else if (!widget.isFrom && s.countries.isEmpty) {
          bloc.add(const CityListEvent.getCountries());
        }
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
    return BlocBuilder<CityListBloc, CityListState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => _PickerShell(
            title: widget.isFrom ? context.l10n.from : context.l10n.to,
            searchHint: widget.isFrom ? context.l10n.from : context.l10n.to,
            controller: _ctrl,
            child: const LoadingWidget(),
          ),
          loading: (_) => _PickerShell(
            title: widget.isFrom ? context.l10n.from : context.l10n.to,
            searchHint: widget.isFrom ? context.l10n.from : context.l10n.to,
            controller: _ctrl,
            child: const LoadingWidget(),
          ),
          failure: (f) => _PickerShell(
            title: context.l10n.error,
            searchHint: context.l10n.search,
            controller: _ctrl,
            child: Center(child: Text(f.failure.toString())),
          ),
          loaded: (s) {
            final query = _ctrl.text.toLowerCase();

            if (widget.isFrom) {
              final filtered = s.cities
                  .where((c) => c.name.toLowerCase().contains(query))
                  .toList();

              return _PickerShell(
                title: context.l10n.from,
                searchHint: context.l10n.from,
                controller: _ctrl,
                onChanged: (_) => setState(() {}),
                child: ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(bottom: 24.h),
                    child: _CityRow(
                      city: filtered[i],
                      onTap: () => Navigator.pop(context, filtered[i]),
                    ),
                  ),
                ),
              );
            }

            // !isFrom - Country/City picker
            if (_selectedCountry != null) {
              final filteredCities = _selectedCountry!.cities
                  .where((c) => c.name.toLowerCase().contains(query))
                  .toList();

              return _PickerShell(
                title: '${context.l10n.to} / ${_selectedCountry!.name}',
                searchHint: context.l10n.search,
                controller: _ctrl,
                onChanged: (_) => setState(() {}),
                onBack: () => setState(() {
                  _selectedCountry = null;
                  _ctrl.clear();
                }),
                child: ListView.builder(
                  itemCount: filteredCities.length,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: _CityRow(
                      city: filteredCities[i],
                      onTap: () => Navigator.pop(context, filteredCities[i]),
                    ),
                  ),
                ),
              );
            }

            final filteredCountries = s.countries
                .where((c) => c.name.toLowerCase().contains(query))
                .toList();

            return _PickerShell(
              title: context.l10n.to,
              searchHint: context.l10n.search,
              controller: _ctrl,
              onChanged: (_) => setState(() {}),
              child: ListView.builder(
                itemCount: filteredCountries.length,
                itemBuilder: (_, i) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
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
  final VoidCallback? onBack;
  final ValueChanged<String>? onChanged;

  const _PickerShell({
    required this.title,
    required this.searchHint,
    required this.controller,
    required this.child,
    this.onBack,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .vertical(top: .circular(28.r)),
      ),
      padding: .symmetric(horizontal: 16.w),
      child: Column(
        children: [
          BottomSheetHeader(
            title: title,
            onClose: () => Navigator.pop(context),
          ),
          Gap.v24,
          _SearchField(
            controller: controller,
            hint: searchHint,
            onChanged: onChanged,
          ),
          Gap.v24,
          Flexible(child: child),
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
    final textStyles = getIt<AppTextStyles>();
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city.name,
                  style: textStyles.bodyMediumSemiBold.copyWith(
                    color: AppColors.onBackground,
                    height: 1,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  city.country,
                  style: textStyles.bodyMediumSemiBold.copyWith(
                    color: AppColors.neutral500,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Text(
            city.codeName,
            style: textStyles.bodyMediumSemiBold.copyWith(
              color: AppColors.neutral500,
            ),
          ),
        ],
      ),
    );
  }
}

class _CountryRow extends StatelessWidget {
  final Country country;
  final VoidCallback onTap;
  final textStyles = getIt<AppTextStyles>();

  _CountryRow({required this.country, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
    );
  }
}
