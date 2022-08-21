import 'package:first_app/Dashboard%20Section/Profile%20Screen/ProfileScreen%20Branches/Favorites/favorites_view.dart';
import 'package:first_app/Dashboard%20Section/Profile%20Screen/ProfileScreen%20Branches/MyHires/myhires_view.dart';
import 'package:first_app/Dashboard%20Section/Profile%20Screen/ProfileScreen%20Main/widgets/search_profile_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../a_constants/colors.dart';
import '../../../../b_universalwidgets/general_tile.dart';



class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 335,
      color: AppColors.white,
      child: Column(
        children: [
          GeneralTile(onPressed: () => showDialog(context: context, builder: (context) => SwitchProfileDialogNew(true, true))
            , "assets/images/switch_profile.svg", "Switch Profile",),
          const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: () => Get.to(FavoritesView()), "assets/images/favorites.svg", "Favorites"),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/my_gigs.svg", "My gigs"),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: () => Get.to(MyHires()), "assets/images/my_hires.svg", "My Hires"),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/my_interests.svg", "My interest")
        ],
      ),
    );
  }
}
