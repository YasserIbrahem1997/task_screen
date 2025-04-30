import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/Order_card_model.dart';
import '../../view_model/utils/constants.dart';
import 'custom_text.dart';

Padding ScetionCardTotel() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: orderCards.length,
        itemBuilder: (context, index) {
          var getData = orderCards[index];
          return Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: getData.title,
                        fontSize: 14,
                        color: getData.colorsTitle,
                      ),
                      SvgPicture.asset(
                        getData.iconPath,
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CustomText(
                      text: getData.count,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                  const SizedBox(height: 8),
                  Text(
                    getData.growthText,
                    style: const TextStyle(
                      fontSize: 14,
                      color: iconsColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 15,
        ),
      ),
    ),
  );
}
