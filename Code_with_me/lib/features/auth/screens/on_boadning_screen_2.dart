import 'package:code_with_me/core/utils/app_color.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/on_boadning_screen_3.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // skip button
            Padding(
              padding: const EdgeInsets.only(top: 10.78),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.skip,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 63,
            ),
            // image
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath2)),
            SizedBox(
              height: 48,
            ),
            // titel
            Text(
              AppStrings.onBoardingTitleTwo,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            // subTitle
            Text(
              AppStrings.onBoardingSubTitleTwo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: AppColor.secondaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 69,
            ),
            // dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 10,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
            Spacer(),
            // Button
            Row(
              children: [
                Spacer(),
                // backButton
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: AppColor.primaryColor,
                    ),
                  ),
                ),
                // nextButton
                SizedBox(
                  width: 163,
                ),
                SizedBox(
                  height: 60,
                  width: 125,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnBoardingScreenThree(),
                          ));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(AppStrings.next),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            // backButton
          ],
        ),
      ),
    );
  }
}
