import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/city_picker/presentation/city_picker_screen.dart';
import 'package:flutter/material.dart';

class CityPickerWidget extends StatefulWidget {
  final String initialFrom;
  final String initialTo;
  final Function(String from, String to) onChanged;

  const CityPickerWidget({
    super.key,
    this.initialFrom = '',
    this.initialTo = '',
    required this.onChanged,
  });

  @override
  State<CityPickerWidget> createState() => _CityPickerWidgetState();
}

class _CityPickerWidgetState extends State<CityPickerWidget> {
  late String _from;
  late String _to;

  @override
  void initState() {
    super.initState();
    _from = widget.initialFrom;
    _to = widget.initialTo;
  }

  @override
  void didUpdateWidget(covariant CityPickerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFrom != widget.initialFrom) {
      _from = widget.initialFrom;
    }
    if (oldWidget.initialTo != widget.initialTo) {
      _to = widget.initialTo;
    }
  }

  Future<void> _openFromPicker() async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, __) => const CityPickerScreen(isFrom: true),
      ),
    );
    if (result != null) {
      setState(() {
        _from = '${result.city} (${result.code})';
        widget.onChanged(_from, _to);
      });
    }
  }

  Future<void> _openToPicker() async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, __) => const CityPickerScreen(isFrom: false),
      ),
    );
    if (result != null) {
      setState(() {
        _to = '${result.city} (${result.code})';
        widget.onChanged(_from, _to);
      });
    }
  }

  void _swapCities() {
    setState(() {
      final tmp = _from;
      _from = _to;
      _to = tmp;
      widget.onChanged(_from, _to);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Откуда
          GestureDetector(
            onTap: _openFromPicker,
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _from.isEmpty ? 'Откуда' : _from,
                      style: tt.bodyMedium?.copyWith(
                        color: _from.isEmpty
                            ? AppColors.neutral500
                            : AppColors.onBackground,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _swapCities,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: AppColors.neutral900,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.swap_horiz_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          // Куда
          GestureDetector(
            onTap: _openToPicker,
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _to.isEmpty ? 'Куда' : _to,
                  style: tt.bodyMedium?.copyWith(
                    color: _to.isEmpty
                        ? AppColors.neutral500
                        : AppColors.onBackground,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
