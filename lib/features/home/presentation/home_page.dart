import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';
import 'package:aviatraffic/features/home/domain/entities/home_news.dart';
import 'package:aviatraffic/features/home/presentation/bloc/home_bloc.dart';
import 'package:aviatraffic/features/city_picker/presentation/widgets/city_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ════════════════════════════════════════════════════════════════════
// HOME SCREEN
// ════════════════════════════════════════════════════════════════════

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatefulWidget {
  const _HomeScreenView();

  @override
  State<_HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<_HomeScreenView> {
  String _from = '';
  String _to = '';
  DateTime? _departDate;
  DateTime? _returnDate;
  int _passengers = 1;
  String _currency = 'KGS';

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

  void _onCityChanged(String from, String to) {
    setState(() {
      _from = from;
      _to = to;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => Scaffold(
            backgroundColor: cs.surfaceContainerLow,
            body: const Center(child: CircularProgressIndicator()),
          ),
          failure: (s) => Scaffold(
            backgroundColor: cs.surfaceContainerLow,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  s.failure.userMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
          loaded: (s) => Scaffold(
            backgroundColor: cs.surfaceContainerLow,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderSection(),
                  _buildBottomSection(news: s.news, deals: s.deals),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ── HEADER (gradient) ─────────────────────────────────────────────

  Widget _buildHeaderSection() {
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primaryContainer,
            cs.primary.withOpacity(0.8),
            cs.primary,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _buildAppBar(),
            const SizedBox(height: 16),
            _buildSearchForm(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'AVIA',
                style: tt.titleLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: cs.onPrimary,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(width: 2),
              Text(
                'TRAFFIC',
                style: tt.titleLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: cs.primaryFixedDim,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 26,
                        height: 3,
                        decoration: BoxDecoration(
                          color: cs.primaryFixedDim,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Icon(Icons.flight, color: cs.primaryFixedDim, size: 14),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'COMPANY',
                    style: TextStyle(
                      fontSize: 7,
                      color: cs.onPrimary.withOpacity(0.8),
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _iconBtn(Icons.settings_outlined),
              const SizedBox(width: 8),
              Stack(
                children: [
                  _iconBtn(Icons.notifications_outlined),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconBtn(IconData icon) => Container(
    width: 36,
    height: 36,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.2),
      shape: BoxShape.circle,
    ),
    child: Icon(icon, color: Colors.white, size: 20),
  );

  // ── SEARCH FORM ───────────────────────────────────────────────────

  Widget _buildSearchForm() {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

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

          // Когда / Обратно
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

          // Пассажиры
          _selectField(
            label: 'Количество пассажиров',
            onTap: _showPassengersDialog,
          ),
          const SizedBox(height: 10),

          // Валюта
          _currencyField(),
          const SizedBox(height: 14),

          // Поиск
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

  Widget _dateField({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value.isEmpty ? label : value,
                style: tt.bodyMedium?.copyWith(
                  color: value.isEmpty
                      ? AppColors.neutral500
                      : AppColors.onBackground,
                ),
              ),
            ),
            Icon(Icons.calendar_today_outlined, size: 18, color: cs.primary),
          ],
        ),
      ),
    );
  }

  Widget _selectField({required String label, required VoidCallback onTap}) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: tt.bodyMedium?.copyWith(color: AppColors.neutral500),
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

  Widget _currencyField() {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: _showCurrencyDialog,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
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
                children: [
                  Text(
                    'Валюта',
                    style: tt.bodySmall?.copyWith(color: AppColors.neutral500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _currency,
                    style: tt.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.onBackground,
                    ),
                  ),
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

  // ── BOTTOM CONTENT ────────────────────────────────────────────────

  Widget _buildBottomSection({
    required List<HomeNews> news,
    required List<HomeDeal> deals,
  }) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      color: cs.surfaceContainerLow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _buildNewsSection(news),
          const SizedBox(height: 24),
          _buildHotDealsSection(deals),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildNewsSection(List<HomeNews> news) {
    final tt = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Последние новости',
            style: tt.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.onBackground,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: news.length,
            itemBuilder: (context, i) => Padding(
              padding: EdgeInsets.only(right: i < news.length - 1 ? 12 : 0),
              child: GestureDetector(
                onTap: () {
                  context.router.push(StoriesRoute(initialIndex: i));
                },
                child: _newsCard(news[i], i == 0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _newsCard(HomeNews item, bool selected) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: selected ? Border.all(color: cs.primary, width: 2.5) : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(selected ? 12 : 14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) =>
                  Container(color: AppColors.neutral200),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.65)],
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(
                item.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotDealsSection(List<HomeDeal> deals) {
    final tt = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Горячие предложения',
            style: tt.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.onBackground,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: deals.length,
            itemBuilder: (context, i) => Padding(
              padding: EdgeInsets.only(right: i < deals.length - 1 ? 12 : 0),
              child: GestureDetector(
                onTap: () {
                  context.router.push(StoriesRoute(initialIndex: 0));
                },
                child: _dealCard(deals[i]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _dealCard(HomeDeal deal) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 120,
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${deal.from} -\n${deal.to}',
                    style: tt.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.onBackground,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Купить билет',
                    style: tt.bodySmall?.copyWith(
                      color: cs.primary,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationColor: cs.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    deal.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: AppColors.neutral200),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: cs.primary,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: cs.primary.withOpacity(0.4),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.chat_bubble_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
}
