import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/light_mode.dart';
import 'package:flutter_application_1/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Switch(
      value: themeProvider.getTheme() == lightmode,
      onChanged: (value) {
        themeProvider.toggleTheme();
      },
    );
  }
}
