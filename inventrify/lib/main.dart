import 'package:flutter/material.dart';
import 'package:inventrify/app/app.bottomsheets.dart';
import 'package:inventrify/app/app.dialogs.dart';
import 'package:inventrify/app/app.locator.dart';
import 'package:inventrify/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.startupView,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        );
      }
    );
  }
}
