import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/city_picker/presentation/bloc/city_picker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CityPickerScreen extends StatelessWidget {
  final bool isFrom;

  const CityPickerScreen({super.key, required this.isFrom});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CityPickerBloc>()
        ..add(
          isFrom
              ? const CityPickerEvent.getCities()
              : const CityPickerEvent.getCountries(),
        ),
      child: _CityPickerView(isFrom: isFrom),
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
  Country? _selectedCountry; // Using a wrapper for local state

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _onBack() {
    setState(() {
      _selectedCountry = null;
      _ctrl.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityPickerBloc, CityPickerState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const _Loading(),
          loading: (_) => const _Loading(),
          failure: (f) => Center(child: Text(f.failure.toString())),
          citiesLoaded: (s) {
            final q = _ctrl.text.toLowerCase();
            final filtered = q.isEmpty
                ? s.cities
                : s.cities
                      .where(
                        (c) =>
                            c.city.toLowerCase().contains(q) ||
                            c.country.toLowerCase().contains(q) ||
                            c.code.toLowerCase().contains(q),
                      )
                      .toList();

            return _PickerShell(
              title: 'Откуда',
              searchHint: 'Откуда',
              controller: _ctrl,
              onChanged: (_) => setState(() {}),
              child: filtered.isEmpty
                  ? _EmptySearch()
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filtered.length,
                      separatorBuilder: (_, __) => _Divider(),
                      itemBuilder: (_, i) => _CityRow(
                        city: filtered[i],
                        onTap: () => Navigator.pop(context, filtered[i]),
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
                              c.city.toLowerCase().contains(q) ||
                              c.code.toLowerCase().contains(q),
                        )
                        .toList();

              return _PickerShell(
                title: _selectedCountry!.name,
                searchHint: 'Поиск города',
                controller: _ctrl,
                onChanged: (_) => setState(() {}),
                leadingAction: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                    color: Color(0xFF1A1A2E),
                  ),
                  onPressed: _onBack,
                ),
                showClose: false,
                child: filteredCities.isEmpty
                    ? _EmptySearch()
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: filteredCities.length,
                        separatorBuilder: (_, __) => _Divider(),
                        itemBuilder: (_, i) => _CityRow(
                          city: filteredCities[i],
                          onTap: () =>
                              Navigator.pop(context, filteredCities[i]),
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
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredCountries.length,
                      separatorBuilder: (_, __) => _Divider(),
                      itemBuilder: (_, i) => _CountryRow(
                        country: filteredCountries[i],
                        onTap: () => setState(() {
                          _selectedCountry = filteredCountries[i];
                          _ctrl.clear();
                        }),
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) => const Center(
    child: Padding(
      padding: EdgeInsets.all(32.0),
      child: CircularProgressIndicator(),
    ),
  );
}

// ════════════════════════════════════════════════════════════════════
// SHARED SHELL WIDGET
// ════════════════════════════════════════════════════════════════════

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
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                if (leadingAction != null) ...[
                  leadingAction!,
                  const SizedBox(width: 4),
                ],
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                ),
                if (showClose)
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 18,
                        color: Color(0xFF5B8DEF),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _SearchField(
              controller: controller,
              hint: searchHint,
              onChanged: onChanged,
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: child,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
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
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        controller: controller,
        autofocus: true,
        style: const TextStyle(fontSize: 15),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFFADB5BD), fontSize: 15),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF8A8A8E),
            size: 22,
          ),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (_, value, __) => value.text.isNotEmpty
                ? GestureDetector(
                    onTap: () {
                      controller.clear();
                      onChanged?.call('');
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: Color(0xFFADB5BD),
                      size: 20,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    city.city,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    city.country,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFFADB5BD),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              city.code,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFFADB5BD),
                letterSpacing: 0.5,
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

  String _formatPrice(int price) {
    final s = price.toString();
    final buffer = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buffer.write('\u00A0');
      buffer.write(s[i]);
    }
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    '${country.directions} направлений',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFFADB5BD),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'от ${_formatPrice(country.priceFrom)} ${country.currency}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8A8A8E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      indent: 20,
      endIndent: 20,
      color: Colors.grey.shade100,
    );
  }
}

class _EmptySearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Text(
          'Ничего не найдено',
          style: TextStyle(color: Color(0xFFADB5BD), fontSize: 15),
        ),
      ),
    );
  }
}
