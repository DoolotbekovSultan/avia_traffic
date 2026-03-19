import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/city_picker/presentation/widgets/city_picker_widget.dart';
import 'package:aviatraffic/features/stories/presentation/widgets/stories_widget.dart';
import 'package:aviatraffic/features/deals/presentation/widgets/deals_widget.dart';
import 'package:aviatraffic/shared/presentation/widgets/avia_traffic_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: cs.surfaceContainerLow,
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
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primaryContainer,
            cs.primary.withValues(alpha: .8),
            cs.primary,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            AviaTrafficAppBar(),
            const SizedBox(height: 16),
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
          const SizedBox(height: 20),
          const StoriesWidget(),
          const SizedBox(height: 24),
          const DealsWidget(),
          const SizedBox(height: 20),
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
  int _passengers = 1;
  String _currency = 'KGS';

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
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _dateField(
                  label: 'Когда',
                  value: _formatDate(_departDate),
                  onTap: () => _selectDate(true),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _dateField(
                  label: 'Обратно',
                  value: _formatDate(_returnDate),
                  onTap: () => _selectDate(false),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _selectField(
            label: 'Количество пассажиров',
            onTap: _showPassengersDialog,
          ),
          const SizedBox(height: 10),
          _currencyField(),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A1A2E),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Поиск',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value.isEmpty ? label : value,
                style: textStyles.titleMedium.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  height: 16 / 13,
                  color: value.isEmpty
                      ? AppColors.neutral500
                      : AppColors.onBackground,
                ),
              ),
            ),
            if (label == 'Когда')
              Icon(
                Icons.calendar_today_outlined,
                size: 18.w,
                color: cs.primary,
              ),
          ],
        ),
      ),
    );
  }

  Widget _selectField({required String label, required VoidCallback onTap}) {
    final cs = Theme.of(context).colorScheme;

    final textStyles = getIt<AppTextStyles>();

    final hintTextStyle = textStyles.titleMedium.copyWith(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      height: 16 / 13,
      color: const Color(0xFF8992A0),
    );

    return Container(
      height: 48.h,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(child: Text(label, style: hintTextStyle)),
          const Icon(
            Icons.chevron_right,
            color: AppColors.neutral500,
            size: 22,
          ),
        ],
      ),
    );
  }

  Widget _currencyField() {
    final cs = Theme.of(context).colorScheme;
    final smallHintStyle = getIt<AppTextStyles>().bodySmall.copyWith(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      height: 16 / 13,
      color: const Color(0xFF8992A0),
    );

    final mainTextStyle = getIt<AppTextStyles>().titleMedium.copyWith(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      height: 16 / 13,
      color: const Color(0xFF212020),
    );

    return GestureDetector(
      onTap: _showCurrencyDialog,
      child: Container(
        height: 48.h,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Валюта', style: smallHintStyle),
                  const SizedBox(height: 2),
                  Text(_currency, style: mainTextStyle),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.neutral500,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }

  void _showCurrencyDialog() {
    const currencies = ['KGS', 'USD', 'EUR', 'RUB'];
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Выберите валюту'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: currencies
              .map(
                (c) => ListTile(
                  title: Text(c),
                  trailing: _currency == c
                      ? const Icon(Icons.check, color: Color(0xFF5B8DEF))
                      : null,
                  onTap: () {
                    setState(() => _currency = c);
                    Navigator.pop(context);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }

  Future<void> _selectDate(bool isDeparture) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 2),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(primary: Color(0xFF5B8DEF)),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      setState(() {
        if (isDeparture) {
          _departDate = picked;
        } else {
          _returnDate = picked;
        }
      });
    }
  }

  void _showPassengersDialog() {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    showDialog(
      context: context,
      builder: (context) {
        int tmp = _passengers;
        return StatefulBuilder(
          builder: (context, setD) {
            return AlertDialog(
              title: const Text('Количество пассажиров'),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (tmp > 1) setD(() => tmp--);
                    },
                    icon: const Icon(Icons.remove_circle_outline),
                    color: cs.primary,
                  ),
                  Text(
                    '$tmp',
                    style: tt.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (tmp < 9) setD(() => tmp++);
                    },
                    icon: const Icon(Icons.add_circle_outline),
                    color: cs.primary,
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Отмена'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() => _passengers = tmp);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: cs.primary),
                  child: const Text(
                    'OK',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
