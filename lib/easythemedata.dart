import 'package:easytheme/easythemefeature.dart';
import 'package:flutter/material.dart';

class EasyThemeData{
  EasyThemeData(
    {
      required EasyThemeFeature features
    }
  ): _features=features;

  // variables
  final EasyThemeFeature _features;

  // fuctions
  ThemeData get getThemeData=> ThemeData(
    
    colorScheme: ColorScheme(
      brightness: _features.getBrightness, 
      surfaceTint: _features.getClrSurfaceTint,
      primary: _features.getClrPrimary, 
      primaryContainer: _features.getClrPrimaryVariant,
      onPrimary: _features.getClrOnPrimary, 
      secondary: _features.getClrSecondary, 
      secondaryContainer: _features.getClrSecondaryVariant,
      onSecondary: _features.getClrOnSecondary, 
      tertiary: _features.getClrTertilary,
      tertiaryContainer: _features.getClrTertilary,
      onTertiary: _features.getClrOnTertilary,
      error: _features.getClrError, 
      onError: _features.getClrOnError, 
      surface: _features.getClrOnSurface, 
      surfaceContainer: _features.getClrSurfaceVariant,
      onSurface: _features.getClrOnSurface,

    )
  );

}