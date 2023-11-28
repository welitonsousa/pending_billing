import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pending_billing/core/l10n/translation_service.dart';
import 'package:pending_billing/core/ui/theme/app_theme.dart';
import 'package:pending_billing/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      initialRoute: AppRouters.PENDING_BILLING,
      getPages: AppRouters.routers,
      translations: TranslationService(),
      locale: TranslationService.fallbackLocale,
      debugShowCheckedModeBanner: false,
    );
  }
}
