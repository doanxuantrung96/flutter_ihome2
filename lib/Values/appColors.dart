import 'package:flutter/material.dart';

class appColors{
  appColors._();

  //tabbar
  static const Color color_tabbar = Color(0xFF666666);
  static const Color color_tab_selected = Color(0xFFf7931e);
  static const Color color_tab_non_selected = Color(0xFFFFFFFF);

  static const Color color_background_app = Color(0xFFf2f2f2);
  static const Color black = Color(0xFF000000);
  static const Color text_item_device_gray = Color(0xFF666666);
  static const Color text_button_item_device_drakgray = Color(0xFF8f8f8f);


  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}