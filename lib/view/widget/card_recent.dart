import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../view_model/utils/constants.dart';
import 'custom_text.dart';

Padding CardRecent(String image, String titleRecent, String subTitleRecent,
    String ledTitleRecent, Color colorLedTitleRecent) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1.5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: backgroundColorCard,
            child: Center(
                child: SvgPicture.asset(
              image,
              width: 20,
            )),
          ),
          SizedBox(
            width: 12,
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: titleRecent,
                  fontSize: 15,
                  color: textColorBlack,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: subTitleRecent,
                  fontSize: 13,
                  color: textColor,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorLedTitleRecent),
            child: Center(
              child: CustomText(
                text: ledTitleRecent,
                fontSize: 12,
                color: subMainColor,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
