import 'package:flutter/material.dart';

class LogoutinButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final FontWeight fontWeight;
  final VoidCallback? voidCallback;
  const LogoutinButton( this.text, this.backgroundColor, this.textColor, this.fontWeight, {
    required this.voidCallback,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: 4, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: backgroundColor,
          ),
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: 12,
                fontFamily: "Poppins"),
          )),
    );
  }
}
