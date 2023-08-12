import 'package:bmi/core/app_color.dart';
import 'package:bmi/core/app_strings.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.value, required this.state});

  String? state = "NORMAL";
  double value = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56.0, left: 15.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.whiteColor,
                    size: 26,
                  ),
                ),
                Text(
                  AppString.result,
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Container(
              width: 363,
              height: 535,
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "$state",
                    style: TextStyle(
                      color: AppColor.result,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "$value",
                    style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 80,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    AppString.culees,
                    style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
