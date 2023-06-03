import 'package:flutter/material.dart';

import '../../../../../core/extensions/buildcontext.dart';
import '../../../../../gen/assets.gen.dart';

class ControlHeader extends StatelessWidget {
  const ControlHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Assets.images.appNoSmoking.image(
          height: context.fullHeight * 0.25,
        ),
      ),
    );
  }
}
