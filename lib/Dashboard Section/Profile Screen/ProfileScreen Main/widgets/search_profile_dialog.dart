import 'package:first_app/Dashboard%20Section/Home%20Screen/homescreen_controller.dart';
import 'package:first_app/Dashboard%20Section/Profile%20Screen/profilescreen_controller.dart';
import 'package:first_app/a_constants/colors.dart';
import 'package:first_app/asjede/home/home_scren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../b_universalwidgets/white_text.dart';
import 'package:flutter_svg/svg.dart';

class SwitchProfileDialogNew extends StatelessWidget {
  final bool currentlyABuyer;
  final bool currentlyASeller;
  SwitchProfileDialogNew(this.currentlyASeller, this.currentlyABuyer,
      {Key? key})
      : super(key: key);

  SwitchController switchController = Get.put(SwitchController());
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    final height = mediaquery.height;
    final width = mediaquery.width;
    return Dialog(
      child: SizedBox(
        height: 264,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const WhiteText(false, "Switch Profile", 20, FontWeight.w600,
                  AppColors.black),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => switchController.selectBuyer(),
                          child: Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                  color: switchController.buyer.value
                                      ? AppColors.dialogBackground
                                      : AppColors.dialogBackgroundGrey,
                                  border: switchController.buyer.value
                                      ? Border.all(
                                          color: AppColors.blue, width: 3)
                                      : Border.all(
                                          color:
                                              AppColors.dialogBackgroundGrey),
                                  borderRadius: switchController.buyer.value
                                      ? BorderRadius.circular(5)
                                      : BorderRadius.circular(0)),
                              height: height * 0.160,
                              width: width * 0.30,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                      child: SvgPicture.asset(
                                          "assets/images/buyer.svg")),
                                  const WhiteText(false, "Buyer", 16,
                                      FontWeight.w500, AppColors.black)
                                ],
                              ),
                            ),
                          )),

                      // SizedBox(width: width * 0.053,),

                      GestureDetector(
                          onTap: () => switchController.selectSeller(),
                          child: Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                  color: switchController.seller.value
                                      ? AppColors.dialogBackground
                                      : AppColors.dialogBackgroundGrey,
                                  border: switchController.seller.value
                                      ? Border.all(
                                          color: AppColors.blue, width: 3)
                                      : Border.all(
                                          color:
                                              AppColors.dialogBackgroundGrey),
                                  borderRadius: switchController.seller.value
                                      ? BorderRadius.circular(5)
                                      : BorderRadius.circular(0)),
                              height: height * 0.160,
                              width: width * 0.30,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.to(HomeScren());
                                          },
                                          child: SvgPicture.asset(
                                              "assets/images/seller.svg"))),
                                  const WhiteText(false, "Seller", 16,
                                      FontWeight.w500, AppColors.black)
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: WhiteText(false, "Cancel", 16, FontWeight.w500,
                            AppColors.greyText)),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          bool notASellerMode = switchController.buyer.value;
                          homeScreenController.viewAsBuyer.value = !homeScreenController.viewAsBuyer.value;
                          Navigator.of(context).pop();
                        },
                        child: WhiteText(
                            false, "Done", 16, FontWeight.w500, AppColors.blue))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
