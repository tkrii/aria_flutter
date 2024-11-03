import 'package:aria/aria.dart';
import 'package:example/app/routes/app_pages.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const theme = AriaTheme();

  Get.put(
    GetMaterialController(),
  )
    ..darkTheme = theme.dark()
    ..theme = theme.light()
    ..themeMode = ThemeMode.system;

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example Aria App',
      initialRoute: AppPages.INITIAL,
      locale: const Locale('es', 'MX'),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'MX'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      translationsKeys: AppTranslation.translations,
      getPages: AppPages.routes,
      highContrastTheme: theme.light(1),
      highContrastDarkTheme: theme.dark(1),
    ),
  );
}
