import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/features/deals/presentation/bloc/deals_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = getIt<DealsBloc>();
        bloc.add(const DealsEvent.started());
        return bloc;
      },
      child: const _DealsView(),
    );
  }
}

class _DealsView extends StatelessWidget {
  const _DealsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Горячие предложения',
            style: getIt<AppTextStyles>().titleLargeBold.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 160,
          child: BlocBuilder<DealsBloc, DealsState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const _Loading(),
                loading: (_) => const _Loading(),
                failure: (f) => Center(child: Text(f.failure.toString())),
                loaded: (s) => s.deals.isEmpty
                    ? const _EmptyDeals()
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: s.deals.length,
                        itemBuilder: (context, i) => Padding(
                          padding: EdgeInsets.only(
                            right: i < s.deals.length - 1 ? 12.w : 0,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              context.router.push(
                                DealDetailRoute(deal: s.deals[i]),
                              );
                            },
                            child: _DealCard(deal: s.deals[i]),
                          ),
                        ),
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}

class _EmptyDeals extends StatelessWidget {
  const _EmptyDeals();
  @override
  Widget build(BuildContext context) =>
      Padding(padding: .all(16.w), child: Text('Нет доступных предложений'));
}

class _DealCard extends StatelessWidget {
  final Deal deal;

  const _DealCard({required this.deal});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      width: 280.w,
      margin: EdgeInsets.only(bottom: 12.h),
      height: 120.h,
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    deal.title,
                    style: getIt<AppTextStyles>().titleLargeBold.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.onBackground,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    deal.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) =>
                        Container(color: AppColors.neutral200),
                  ),
                  Positioned(
                    bottom: 10.h,
                    right: 10.w,
                    child: Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: cs.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.chat_bubble_rounded,
                        color: Colors.white,
                        size: 18.w,
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
}
