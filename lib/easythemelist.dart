
import 'package:easytheme/easythemefeature.dart';
import 'package:easytheme/easythemevalue.dart';
import 'package:flutter/material.dart';

class EasyThemeList{
  
  EasyThemeList(
    {
      required List<EasyThemeValue> themes
    }
  ): _themes=themes;

  final List<EasyThemeValue> _themes;
  EasyThemeFeature searchName(String name){
    return _themes.firstWhere(
      (theme)=> theme.getThemeName.toLowerCase() == name.toLowerCase(),
      orElse: () => EasyThemeValue(name: 'Null', 
        features: EasyThemeFeature(
          thememode: ThemeMode.light, 
          brightness: Brightness.light, 
          surfacetint: '#D98324', 
          primary: '#D98324', 
          primaryvariant: '#443627', 
          onprimary: '#F2F6D0', 
          secondary: '#EFDCAB', 
          secondaryvariant: '#443627', 
          onsecondary: '#443627', 
          tertilery: '#F2F6D0', 
          tertileryvariant: '#EFDCAB', 
          ontertilery: '#D98324', 
          surface: '#D98324', 
          surfacevariant: '#443627', 
          onsurface: '#F2F6D0', 
          error: '#800000', 
          onerror: '#F2E8C6', 
          background: '#EFDCAB', 
          onbackground: '#443627'
        )
      ),
    ).getThemeFeature;
  }

}