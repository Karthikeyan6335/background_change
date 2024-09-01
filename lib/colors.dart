import 'package:flutter/material.dart';

class Bg_colors {
  Color bcolor;
  String colorName;

  Bg_colors({
    required this.bcolor,
    required this.colorName,
  });

  static List<Bg_colors> getbg() {
    List<Bg_colors> colors = [];
    colors.add(
        Bg_colors(bcolor: Colors.deepPurple.shade300, colorName: "Purple"));
    colors.add(Bg_colors(bcolor: Colors.blue.shade300, colorName: "Blue"));
    colors.add(Bg_colors(bcolor: Colors.green.shade300, colorName: "Green"));
    colors.add(Bg_colors(bcolor: Colors.yellow.shade600, colorName: "Yellow"));
    colors.add(Bg_colors(bcolor: Colors.orange.shade300, colorName: "Orange"));
    colors.add(Bg_colors(bcolor: Colors.red.shade300, colorName: "Red"));
    colors.add(Bg_colors(bcolor: Colors.pink.shade300, colorName: "Pink"));
    return colors;
  }
}
