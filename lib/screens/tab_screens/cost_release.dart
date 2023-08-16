import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pricing_structure/provider/day_provider.dart';

class CostRelease extends ConsumerStatefulWidget {
  const CostRelease({super.key});

  @override
  ConsumerState<CostRelease> createState() => _CostReleaseState();
}

class _CostReleaseState extends ConsumerState<CostRelease> {
  @override
  Widget build(BuildContext context) {
    final dayOutput = ref.watch(dayProvider);
    return Center(
      child: Text(dayOutput.toString()),
    );
  }
}
