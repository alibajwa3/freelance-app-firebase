import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../a_constants/colors.dart';
import '../../../../b_universalwidgets/white_text.dart';
import 'local_custom_button.dart';

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
          height: 263,
          width: 335,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                            child: WhiteText(false, "Rate Us", 20,
                                FontWeight.w600, AppColors.black)),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: SvgPicture.asset("assets/images/cross.svg")),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 28, right: 24),
                  child: WhiteText(
                      true,
                      "We work super hard to make Glose better for yu, and would love to know: how would you rate our app",
                      14,
                      FontWeight.w400,
                      AppColors.greyText),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Padding(
                  padding: EdgeInsets.only(top: 9, left: 20, right: 20, bottom: 20),
                  child: CustomButtonSecond("Submit"),
                )
              ],
            ),
          )),
    );
    ;
  }
}
