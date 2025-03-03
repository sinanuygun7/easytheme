
import 'package:flutter/material.dart';

class EasyThemeFeature {
  EasyThemeFeature(
    {
      required ThemeMode thememode,
      required Brightness brightness,

      required String surfacetint,
      required String background,
      required String onbackground,

      required String primary,
      required String primaryvariant,
      required String onprimary,

      required String secondary,
      required String secondaryvariant,
      required String onsecondary,

      required String tertilery,
      required String tertileryvariant,
      required String ontertilery,

      required String surface,
      required String surfacevariant,
      required String onsurface,

      required String error,
      required String onerror,
    }
  ): _thememode=thememode, _brightness=brightness, 
     _strsurfacetint=surfacetint, _strbackground=background, _stronbackground=onbackground,
     _strprimary=primary, _strprimaryvariant=primaryvariant, _stronprimary=onprimary,
     _strsecondary=secondary, _strsecondaryvariant=secondaryvariant, _stronsecondary=onsecondary,
     _strtertilery=tertilery, _strtertileryvariant=tertileryvariant, _strontertilery=ontertilery,
     _strsurface=surface, _strsurfacevariant=surfacevariant, _stronsurface=onsurface,
     _strerror=error, _stronerror= onerror
  {
    _clrsurfacetint= _convert(_strsurfacetint);
    _clrbackground= _convert(_strbackground);
    _clronbackground= _convert(_stronbackground);

    _clrprimary= _convert(_strprimary);
    _clrprimaryvariant= _convert(_strprimaryvariant);
    _clronprimary= _convert(_stronprimary);

    _clrsecondary= _convert(_strsecondary);
    _clrsecondaryvariant=_convert(_strsecondaryvariant);
    _clronsecondary= _convert(_stronsecondary);

    _clrtertilery= _convert(_strtertilery);
    _clrtertileryvariant= _convert(_strtertileryvariant);
    _clrontertilery = _convert(_strontertilery);

    _clrsurface=_convert(_strsurface);
    _clrsurfacevariant= _convert(_strsurfacevariant);
    _clronsurface = _convert(_stronsurface);

    _clrerror = _convert(_strerror);
    _clronerror= _convert(_stronerror);
  }

    // color function
    Color _convert(String strcolor){
      return Color(int.parse('0xFF${strcolor.replaceAll('#', '')}'));
    }

    // variables
    final ThemeMode _thememode;
    final Brightness _brightness;

    final String _strsurfacetint;
    final String _strbackground;
    final String _stronbackground;

    final String _strprimary;
    final String _strprimaryvariant;
    final String _stronprimary;

    final String _strsecondary;
    final String _strsecondaryvariant;
    final String _stronsecondary;

    final String _strtertilery;
    final String _strtertileryvariant;
    final String _strontertilery;

    final String _strsurface;
    final String _strsurfacevariant;
    final String _stronsurface;

    final String _strerror;
    final String _stronerror; 

    late Color _clrsurfacetint;
    late Color _clrbackground;
    late Color _clronbackground;

    late Color _clrprimary;
    late Color _clrprimaryvariant;
    late Color _clronprimary;

    late Color _clrsecondary;
    late Color _clrsecondaryvariant;
    late Color _clronsecondary;

    late Color _clrtertilery;
    late Color _clrtertileryvariant;
    late Color _clrontertilery;

    late Color _clrsurface;
    late Color _clrsurfacevariant;
    late Color _clronsurface;

    late Color _clrerror;
    late Color _clronerror;

    // get functions
    ThemeMode get getThemeMode=> _thememode;
    Brightness get getBrightness=> _brightness;

    String get getStrSurfaceTint=> _strsurfacetint;
    String get getStrBackground=> _strbackground;
    String get getStrOnBackground=> _stronbackground;
    String get getStrPrimary=> _strprimary;
    String get getStrPrimaryVariant=> _strprimaryvariant;
    String get getStrOnPrimary=> _stronprimary;
    String get getStrSecondary=> _strsecondary;
    String get getStrSecondaryVariant=> _strsecondaryvariant;
    String get getStrOnSecondary=> _stronsecondary;
    String get getStrSurface=> _strsurface;
    String get getStrSurfaceVariant=> _strsurfacevariant;
    String get getStrOnSurface=> _stronsurface;
    String get getStrTertilary=> _strtertilery;
    String get getStrTertilearyVariant=> _strtertileryvariant;
    String get getStrOnTertilary=> _strontertilery;
    String get getStrError=> _strerror;
    String get getStrOnError=> _stronerror;
    
    Color get getClrSurfaceTint=> _clrsurfacetint;
    Color get getClrBackground=> _clrbackground;
    Color get getClrOnBackground=> _clronbackground;
    Color get getClrPrimary=> _clrprimary;
    Color get getClrPrimaryVariant=> _clrprimaryvariant;
    Color get getClrOnPrimary=> _clronprimary;
    Color get getClrSecondary=> _clrsecondary;
    Color get getClrSecondaryVariant=> _clrsecondaryvariant;
    Color get getClrOnSecondary=> _clronsecondary;
    Color get getClrSurface=> _clrsurface;
    Color get getClrSurfaceVariant=> _clrsurfacevariant;
    Color get getClrOnSurface=> _clronsurface;
    Color get getClrTertilary=> _clrtertilery;
    Color get getClrTertilearyVariant=> _clrtertileryvariant;
    Color get getClrOnTertilary=> _clrontertilery;
    Color get getClrError=> _clrerror;
    Color get getClrOnError=> _clronerror;

}