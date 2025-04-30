import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/quick_action_model.dart';
import '../../view_model/utils/constants.dart';
import 'custom_text.dart';

Container SectionQuickAction() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    color: backgroundColorCard,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "Quick Actions",
                fontSize: 18,
                color: subTextColor,
                fontWeight: FontWeight.bold,
              ),
              Spacer(),
              GestureDetector(
                  child: SvgPicture.asset(
                "assets/icons/edit.svg",
                width: 15,
              ))
            ],
          ),
          const SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: quickActions.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.6,
              mainAxisSpacing: 15,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              var getDataQuick = quickActions[index];
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                  color: textColorWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      getDataQuick.iconPath,
                      color: mainColor,
                      width: 22,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                        child: CustomText(
                      text: getDataQuick.title,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColorSub,
                    )),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
