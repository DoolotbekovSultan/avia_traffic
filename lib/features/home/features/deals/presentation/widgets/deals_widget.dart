import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/features/home/features/deals/presentation/bloc/deals_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DealsWidget extends StatelessWidget {
  final Function(Deal) onClickBuyTicket;
  const DealsWidget({super.key, required this.onClickBuyTicket});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = getIt<DealsBloc>();
        bloc.add(const DealsEvent.started());
        return bloc;
      },
      child: _DealsWidgetState(onClickBuyTicket: onClickBuyTicket),
    );
  }
}

class _DealsWidgetState extends StatelessWidget {
  final Function(Deal) onClickBuyTicket;
  const _DealsWidgetState({required this.onClickBuyTicket});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            l10n.hot_deals,
            style: getIt<AppTextStyles>().titleMediumBold.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 160.h,
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
                          child: _DealCard(
                            deal: s.deals[i],
                            onClickBuyTickerBtn: onClickBuyTicket,
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
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.all(16.w),
    child: Text(context.l10n.no_deals),
  );
}

class _DealCard extends StatelessWidget {
  final Deal deal;
  final Function(Deal) onClickBuyTickerBtn;

  const _DealCard({required this.deal, required this.onClickBuyTickerBtn});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final l10n = context.l10n;

    return Stack(
      children: [
        SizedBox(width: 344.w),
        Container(
          width: 342.w,
          height: 144.h,
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
              SizedBox(
                width: 204.w,
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        deal.title,
                        style: getIt<AppTextStyles>().titleMediumBold.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.onBackground,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      InkWell(
                        onTap: () => onClickBuyTickerBtn(deal),
                        child: Text(
                          l10n.buy_ticket,
                          style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                            color: AppColors.onBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 138.w,
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                  child: Image.network(
                    deal.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) =>
                        Container(color: AppColors.neutral200),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: (144.h - 48.h) / 2,
          child: GestureDetector(
            onTap: () {
              context.router.push(DealDetailRoute(deal: deal));
            },
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFF7C8C8), AppColors.primary],
                ),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/messange.svg',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
