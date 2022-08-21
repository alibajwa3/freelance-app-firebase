import 'package:flutter/material.dart';

import '../../../../a_constants/colors.dart';

class CustomButtonSecond extends StatelessWidget {
  final String buttonText;
  const CustomButtonSecond(this.buttonText, { Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: 295,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF0075FF),
            ),
            child: Container(
              color: AppColors.blue,
              alignment: Alignment.center,
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            )));
  }
}
