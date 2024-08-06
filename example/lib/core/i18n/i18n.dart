import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'en_us.dart';
import 'es_mx.dart';

class I18n implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'es_mx': esMX,
        'en_us': enUS,
      };

  static String add = 'add'.tr;
  static String about = 'about'.tr;
  static String theme = 'theme'.tr;
  static String helloWorld = 'hello_world'.tr;
  static String buttonPushed = 'button_pushed'.tr;
  static String colorsView = 'colors_view'.tr;
  static String widgets = 'widgets'.tr;
  static String typography = 'typography'.tr;
  static String buttons = 'buttons'.tr;
  static String button = 'button'.tr;
  static String checkBox = 'checkbox'.tr;
  static String first = 'first'.tr;
  static String second = 'second'.tr;
  static String third = 'third'.tr;
  static String radio = 'radio'.tr;
  static String forms = 'forms'.tr;
  static String expansible = 'expansible'.tr;
  static String select = 'select'.tr;
}

class LocaleKeys {
  LocaleKeys._();
  static const String appName = 'appName';
  static const String version = 'version';
  static const String argo = 'argo';
  static const String settings = 'settings';
  static const String hello = 'hello';
  static const String add = 'add';
  static const String search = 'search';
  static const String tabs = 'tabs';
  static const String tab = 'tab';
  static const String closedTab = 'closedTab';
  static const String buttonPushed = 'buttonPushed';
  static const String system = 'system';
  static const String dark = 'dark';
  static const String light = 'light';
  static const String options = 'options';
  static const String railMode = 'railMode';
  static const String accent = 'accent';
  static const String lorem = 'lorem';
  static const String bannerTitle = 'bannerTitle';
  static const String selected = 'selected';
  static const String linkedButtons = 'linkedButtons';
  static const String segmentedControl = 'segmentedControl';
  static const String subtitle = 'subtitle';
  static const String switchText = 'switchText';
  static const String listTile = 'listTile';
  static const String title = 'title';
  static const String slider = 'slider';
  static const String indicator = 'indicator';
  static const String textField = 'textField';
  static const String banners = 'banners';
  static const String showBanner = 'showBanner';
  static const String showSnackBar = 'showSnackBar';
  static const String pickers = 'pickers';
  static const String datePicker = 'datePicker';
  static const String timePicker = 'timePicker';
}
