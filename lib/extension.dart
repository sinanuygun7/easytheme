
import 'package:easytheme/easytheme.dart';
import 'package:easytheme/easythemedata.dart';
import 'package:easytheme/easythemefeature.dart';
import 'package:easytheme/easythemelist.dart';
import 'package:easytheme/easythemevalue.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{

  static List<EasyThemeValue> _themes=[];
  static EasyTheme _easytheme=EasyTheme(themes: []);
  static EasyThemeList _list=EasyThemeList(themes: _themes);

  void setThemes(List<EasyThemeValue> themes){
    _themes=themes;
    _list=EasyThemeList(themes: _themes);
    _easytheme=EasyTheme(themes: _themes);
    _easytheme.activeTheme();
  }

  void changeTheme(String name){
    _easytheme.changeTheme(name);
  }

  ThemeData activeThemeData(){
    return _easytheme.getThemeData;
  }

  ThemeMode activeThemeMode(){
    return _easytheme.getThemeMode;
  }

  String activeThemeName(){
    return _easytheme.getThemeName;
  }

  ThemeData searchTheme(String name){
    final EasyThemeFeature feature= _list.searchName(name);
    final themedata= EasyThemeData(features: feature);
    return themedata.getThemeData;
  }
}