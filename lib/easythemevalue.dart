
import 'package:easytheme/easythemefeature.dart';

class EasyThemeValue{
  EasyThemeValue(
    {
      required String name,
      required EasyThemeFeature features
    }
  ): _name=name, _features=features;

  final String _name;
  final EasyThemeFeature _features;

  String get getThemeName=> _name;
  EasyThemeFeature get getThemeFeature=> _features;
}