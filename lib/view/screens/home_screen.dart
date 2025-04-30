import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../view_model/utils/constants.dart';
import '../widget/card_recent.dart';
import '../widget/custom_text.dart';
import '../widget/scetion_card_totel.dart';
import '../widget/sction_quick_qction.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar Custom Row
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => Row(
                        children: [
                          GestureDetector(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: SvgPicture.asset("assets/icons/drow.svg"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CustomText(
                            text: "Dashboard",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colorBlack,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/natfctions.svg",
                              width: 20,
                            ),
                            Positioned(
                              top: -5,
                              right: -5,
                              child: Container(
                                height: 18,
                                width: 18,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: iconsColor,
                                  shape: BoxShape.circle,
                                ),
                                child: CustomText(text: "3", fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/img.png"),
                          radius: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              //todo: Content screen
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomText(
                  text: "Welcome back, John!",
                  fontSize: 24,
                  color: titleTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomText(
                  text: "Monday, 15 March 2025",
                  fontSize: 14,
                  color: titleTextColor,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomText(
                  text: "Recent Activity",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: titleTextColor,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              // todo : this card recent
              CardRecent("assets/icons/box.svg", "New Order #1234",
                  "2 minutes ago", "15.00 EGP", backgroundMainColor),
              const SizedBox(
                height: 15,
              ),
              CardRecent("assets/icons/massege.svg", "New Support Ticket",
                  "15 minutes ago", "Open", backgroundColorCard),
              const SizedBox(
                height: 25,
              ),

              // todo : card total and analyse
              ScetionCardTotel(),
              const SizedBox(
                height: 30,
              ),
              // todo : quick action
              SectionQuickAction()
            ],
          ),
        ),
      ),
    );
  }
}
