import 'package:bmi/core/app_color.dart';
import 'package:flutter/material.dart';

class SexContainer extends StatelessWidget {
  SexContainer({Key? key, this.text, this.icon}) : super(key: key);

  String? text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 31.0, bottom: 57.0),
      child: Container(
        width: 136,
        height: 159,
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 39.0, bottom: 28.0),
              child: Icon(
                icon,
                color: AppColor.whiteColor,
                size: 47,
              ),
            ),
            Text(
              text!,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: AppColor.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
