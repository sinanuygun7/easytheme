
import 'package:easytheme/easythemedata.dart';
import 'package:easytheme/easythemefeature.dart';
import 'package:easytheme/easythemelist.dart';
import 'package:easytheme/easythemevalue.dart';
import 'package:flutter/material.dart';

class EasyTheme with ChangeNotifier{

  EasyTheme(
    {
      required List<EasyThemeValue> themes
    }
  ): _themes=themes{
    _list= EasyThemeList(themes: _themes);
    activeTheme();
  }

  // call class
  EasyThemeList _list= EasyThemeList(themes: []);
  ThemeData _currentthemedata= ThemeData.light();
  ThemeMode _currentthememode=ThemeMode.light;
  String _currentthemename='default';

  // variables
  final List<EasyThemeValue> _themes;
  late EasyThemeData _themedata;

  // functions

  ThemeData get getThemeData=> _currentthemedata;
  ThemeMode get getThemeMode=> _currentthememode;
  String get getThemeName=> _currentthemename;

  void changeTheme(String name){
    final EasyThemeFeature feature=_list.searchName(name);
    _themedata= EasyThemeData(features: feature);
    _currentthemename= name;
    _currentthemedata= _themedata.getThemeData;
    _currentthememode= feature.getThemeMode;
    notifyListeners();
  }

  void activeTheme(){
    final EasyThemeFeature feature=_list.searchName('default');
    _themedata= EasyThemeData(features: feature);
    _currentthemename='default';
    _currentthemedata= _themedata.getThemeData;
    _currentthememode= feature.getThemeMode;
    notifyListeners();
  }
}
