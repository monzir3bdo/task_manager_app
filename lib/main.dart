import 'package:flutter/cupertino.dart';
import 'package:maids_task/core/app/app.dart';
import 'package:maids_task/injection_container.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    const ToastificationWrapper(
      child: App(),
    ),
  );
}
