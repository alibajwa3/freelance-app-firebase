import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../a_constants/colors.dart';
import '../../../../b_universalwidgets/white_text.dart';
import '../../profilescreen_controller.dart';

class AccountTile extends StatelessWidget {
  final String imageAssetPath;
  final String titleOfTile;
  final VoidCallback? onPressed;
  final bool wantSwitchButton;
  const AccountTile(this.wantSwitchButton, this.titleOfTile, this.imageAssetPath, {required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SwitchController sx = Get.put(SwitchController());
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 54,
        width: Get.width,
        child: SizedBox(
          child: InkWell(
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0),
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(imageAssetPath),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 1),
                      child: WhiteText(
                          false, titleOfTile, 14, FontWeight.w400, AppColors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, right: 15,),
                    child: wantSwitchButton ? Obx(() => Switch(
                        onChanged: (val) => sx.toggle(),
                        value: sx.on.value)) : SvgPicture.asset("assets/images/forward_button.svg",),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
