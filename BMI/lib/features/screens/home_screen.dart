import 'package:bmi/core/Calc.dart';
import 'package:bmi/core/app_color.dart';
import 'package:bmi/core/app_strings.dart';
import 'package:bmi/features/components/custom_container.dart';
import 'package:bmi/features/components/sex_container.dart';
import 'package:bmi/features/screens/result_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double value = 30, res = 0;
  int weight = 20, age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        title: Text(
          AppString.bmiCalculator,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SexContainer(
                icon: Icons.female_rounded,
                text: AppString.female,
              ),
              SexContainer(
                icon: Icons.male_rounded,
                text: AppString.male,
              ),
            ],
          ),
          Container(
            width: 334,
            height: 189,
            decoration: BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.hieght,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        AppString.cm,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: AppColor.activeColor,
                      inactiveTrackColor: AppColor.inActiveColor,
                      trackShape: RoundedRectSliderTrackShape(),
                      trackHeight: 4.0,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 5.0),
                      thumbColor: Colors.redAccent,
                      overlayColor: Colors.red.withAlpha(32),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 28.0),
                      tickMarkShape: RoundSliderTickMarkShape(),
                      activeTickMarkColor: Colors.red[700],
                      inactiveTickMarkColor: Colors.red[100],
                      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                      valueIndicatorColor: AppColor.indicatorColor,
                      valueIndicatorTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    child: Slider(
                      value: value,
                      min: 0,
                      max: 300,
                      divisions: 100,
                      // activeColor: AppColor.activeColor,
                      //inactiveColor: AppColor.inActiveColor,
                      label: "${value.round()}",
                      onChanged: (double value) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  text: AppString.wieght,
                  value: weight,
                  SubPressed: () {
                    setState(() {
                      if (weight - 1 > 0) weight--;
                    });
                  },
                  AddPressed: () {
                    setState(() {
                      weight++;
                    });
                  }),
              CustomContainer(
                  text: AppString.age,
                  value: age,
                  SubPressed: () {
                    setState(() {
                      if (age - 1 > 0) age--;
                    });
                  },
                  AddPressed: () {
                    setState(() {
                      age++;
                    });
                  }),
            ],
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 84,
            child: ElevatedButton(
              onPressed: () {
                BMICalculator BMI = new BMICalculator();
                res = BMI.Calc(
                  height: value,
                  weight: weight.toDouble(),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      value: res,
                      state: BMI.State(number: res),
                    ),
                  ),
                );
              },
              child: Text(
                AppString.calculate,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.indicatorColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
