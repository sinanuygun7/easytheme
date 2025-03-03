import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easytheme/easytheme.dart';
import 'package:easytheme/easythemefeature.dart';
import 'package:easytheme/easythemevalue.dart';

void main() {
  group("EasyTheme Testleri", () {
    late EasyTheme themeProvider;

    setUp(() {
      themeProvider = EasyTheme(
        themes: [
          EasyThemeValue(
            name: 'default',
            features: EasyThemeFeature(
              thememode: ThemeMode.system,
              brightness: Brightness.light,
              surfacetint: '#00ADB5',
              background: '#393E46',
              onbackground: '#00ADB5',
              primary: '#00ADB5',
              primaryvariant: '#222831',
              onprimary: '#393E46',
              secondary: '#EEEEEE',
              secondaryvariant: '#222831',
              onsecondary: '#222831',
              tertilery: '#00ADB5',
              tertileryvariant: '#222831',
              ontertilery: '#222831',
              surface: '#00ADB5',
              surfacevariant: '#222831',
              onsurface: '#393E46',
              error: '#FF2E63',
              onerror: '#1B262C',
            ),
          ),
          EasyThemeValue(
            name: 'theme_1',
            features: EasyThemeFeature(
              thememode: ThemeMode.system,
              brightness: Brightness.light,
              surfacetint: '#252A34',
              background: '#252A34',
              onbackground: '#EAEAEA',
              primary: '#08D9D6',
              primaryvariant: '#252A34',
              onprimary: '#252A34',
              secondary: '#FF2E63',
              secondaryvariant: '#08D9D6',
              onsecondary: '#252A34',
              tertilery: '#FF2E63',
              tertileryvariant: '#08D9D6',
              ontertilery: '#EAEAEA',
              surface: '#08D9D6',
              surfacevariant: '#252A34',
              onsurface: '#252A34',
              error: '#FF2E63',
              onerror: '#252A34',
            ),
          ),
        ],
      );
    });

    test("Başlangıç teması 'default' olmalı", () {
      expect(themeProvider.getThemeName, 'default');
    });

    test("Tema değiştirildiğinde yeni tema aktif olmalı", () {
      themeProvider.changeTheme('theme_1');
      expect(themeProvider.getThemeName, 'theme_1');
    });

    test("Geçersiz tema adı değiştirme işlemi yapmamalı", () {
      themeProvider.changeTheme('bilinmeyen_tema');
      expect(themeProvider.getThemeName, isNot('bilinmeyen_tema'));
    });
  });
}
