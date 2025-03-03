
import 'package:easytheme/easytheme.dart';
import 'package:easytheme/easythemevalue.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{

  static List<EasyThemeValue> _themes=[];
  static EasyTheme _easytheme=EasyTheme(themes: []);

  void setThemes(List<EasyThemeValue> themes){
    _themes=themes;
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
}