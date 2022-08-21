import 'package:first_app/AppSupport/appsupport_view.dart';
import 'package:first_app/Dashboard%20Section/Profile%20Screen/ProfileScreen%20Main/widgets/rate_us.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../a_constants/colors.dart';
import '../../../../b_universalwidgets/general_tile.dart';
import '../../ProfileScreen Branches/Notifications/notifications_view.dart';
import 'account_tile.dart';


class GeneralWidget extends StatelessWidget {
  const GeneralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: 335,
      color: AppColors.white,
      child: Column(
        children: [
          AccountTile(false, onPressed: null, "Languages", "assets/images/languages.svg",),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(true, onPressed: null, "Active status", "assets/images/active_status.svg", ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(false, onPressed: () => Get.to(Notifications()), "Notification settings", "assets/images/notification_settings.svg", ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(false, onPressed: null, "Security", "assets/images/secuirty.svg",),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/share_with_friends.svg", "Share with friends", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          AccountTile(false, onPressed: () => showDialog(context: context, builder: (context) => const RateUs()), "Rate us", "assets/images/rate_us.svg",),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          AccountTile(false, onPressed: null, "Feedback", "assets/images/feedback.svg",  ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: () => Get.to(AppSupport()), "assets/images/app_support.svg", "AppSupport", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/about_app.svg", "About app", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/privacy_policy.svg", "Privacy policy", )
        ],
      ),
    );
  }
}
