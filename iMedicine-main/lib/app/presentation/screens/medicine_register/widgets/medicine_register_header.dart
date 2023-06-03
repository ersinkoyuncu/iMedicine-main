import 'package:flutter/material.dart';

import '../../../../../core/extensions/buildcontext.dart';
import '../../../../../gen/assets.gen.dart';

class MedicineRegisterHeader extends StatelessWidget {
  const MedicineRegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.appMedicineRegister
        .image(height: context.fullHeight * .2);
  }
}
