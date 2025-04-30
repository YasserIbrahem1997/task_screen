import 'dart:ui';

import 'package:flutter/material.dart';

import '../view_model/utils/constants.dart';

class OrderCardModel {
  final String title;
  final String iconPath;
  final String count;
  final String growthText;
  final Color colorsTitle;

  OrderCardModel({
    required this.title,
    required this.iconPath,
    required this.count,
    required this.growthText,
    required this.colorsTitle,
  });
}

final List<OrderCardModel> orderCards = [
  OrderCardModel(
    title: "Total Orders",
    colorsTitle: mainColor,
    iconPath: "assets/icons/orders.svg",
    count: "1,258",
    growthText: "+12.5% from last week",
  ),
  OrderCardModel(
    title: "Revenue",
    colorsTitle: iconsColor,
    iconPath: "assets/icons/total.svg",
    count: "\$24.5k",
    growthText: "+8.2% from last week",
  ),
  OrderCardModel(
    title: "New Users",
    iconPath: "assets/icons/orders.svg",
    colorsTitle: mainColor,
    count: "842",
    growthText: "+8.3% from last week",
  ),
];
