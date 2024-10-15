import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/widgets/loading_shimmer.dart';

class LoadingListWidget extends StatelessWidget {
  const LoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 8,
      itemBuilder: (context, index) {
        return const LoadingShimmer();
      },
      separatorBuilder: (context, index) {
        return const Gap(20);
      },
    );
  }
}
