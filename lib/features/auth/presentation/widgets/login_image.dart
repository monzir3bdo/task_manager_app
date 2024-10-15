import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesLogin);
  }
}
