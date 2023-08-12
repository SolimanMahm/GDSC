import 'package:bmi/core/app_color.dart';
import 'package:flutter/material.dart.';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {Key? key,
      this.text,
      required this.value,
      this.AddPressed,
      this.SubPressed})
      : super(key: key);

  String? text;
  int value;
  VoidCallback? AddPressed, SubPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 57.0),
      child: Container(
        width: 136,
        height: 159,
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text!,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColor.whiteColor,
              ),
            ),
            Text(
              "${value}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppColor.whiteColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: SubPressed,
                  icon: Icon(
                    Icons.remove_circle,
                    color: AppColor.whiteColor,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: AddPressed,
                  icon: Icon(
                    Icons.add_circle,
                    color: AppColor.whiteColor,
                    size: 30,
                    semanticLabel: "-",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
