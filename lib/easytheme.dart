
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
  ){
    _themes.addAll(themes);
    _list= EasyThemeList(themes: _themes);
  }

  // call class
  late EasyThemeList _list;
  late ThemeData _currentthemedata;
  late ThemeMode _currentthememode;
  late String _currentthemename;

  // variables
  late List<EasyThemeValue> _themes;
  late EasyThemeData _themedata;

  // functions

  ThemeData get getThemeData=> _currentthemedata;
  ThemeMode get getThemeMode=> _currentthememode;
  String get getThemeName=> _currentthemename;

  set changeThemeList(List<EasyThemeValue> themes)=> _themes.addAll(themes);

  void changeTheme(String name){
    _list= EasyThemeList(themes: _themes);
    final EasyThemeFeature feature=_list.searchName(name);
    _themedata= EasyThemeData(features: feature);
    _currentthemename= name;
    _currentthemedata= _themedata.getThemeData;
    _currentthememode= feature.getThemeMode;
    notifyListeners();
  }

  void activeTheme(){
    _list = EasyThemeList(themes: _themes);
    final EasyThemeFeature feature=_list.searchName('default');
    _themedata= EasyThemeData(features: feature);
    _currentthemename='default';
    _currentthemedata= _themedata.getThemeData;
    _currentthememode= feature.getThemeMode;
    notifyListeners();
  }
}
