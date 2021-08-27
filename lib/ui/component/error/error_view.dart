import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, this.retry}) : super(key: key);
  final Function()? retry;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Icon(Icons.error_outline), Gap(8), Text('エラーが発生しました')],
      ),
      if (retry != null) ...[
        const Gap(20),
        ElevatedButton.icon(
          onPressed: retry,
          icon: const Icon(Icons.refresh),
          label: const Text('再試行'),
        )
      ]
    ]);
  }
}
