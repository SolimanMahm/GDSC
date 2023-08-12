import 'package:code_with_me/core/utils/app_color.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/components/custem_text_field.dart';
import 'package:code_with_me/features/auth/screens/Chat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // image
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Center(
                child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(AppImages.imgPath4)),
              ),
            ),
            // TabBar
            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: SizedBox(
                height: 82,
                width: 369,
                child: TabBar(
                  indicatorColor: AppColor.primaryColor,
                  tabs: [
                    Tab(
                      child: Text(
                        AppStrings.signIn,
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        AppStrings.signUp,
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  ListView(
                    children: [
                      CustomFormTextField(
                        onChanged: (data) {
                          email = data;
                        },
                        hintTaxt: "Email",
                        preIcon: Icons.email_outlined,
                      ),
                      CustomFormTextField(
                        onChanged: (data) {
                          password = data;
                        },
                        hintTaxt: "Password",
                        preIcon: Icons.lock_outline,
                        sufIcon: Icons.remove_red_eye_outlined,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, right: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              AppStrings.forgetPassword,
                              style: TextStyle(
                                color: AppColor.fourthColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 42.0, vertical: 47),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (email == "gdsc@gmail.com" &&
                                  password == "gdsc") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Chat(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "This email not found",
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Text(AppStrings.signIn),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: AppColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // second tab bar view widget
                  ListView(
                    children: [
                      CustomFormTextField(
                        hintTaxt: "Name",
                        preIcon: Icons.person_outline,
                      ),
                      CustomFormTextField(
                        hintTaxt: "Phone Number",
                        preIcon: Icons.phone_outlined,
                      ),
                      CustomFormTextField(
                        hintTaxt: "Email",
                        preIcon: Icons.email_outlined,
                      ),
                      CustomFormTextField(
                        hintTaxt: "Password",
                        preIcon: Icons.lock_outline,
                        sufIcon: Icons.remove_red_eye_outlined,
                      ),
                      CustomFormTextField(
                        hintTaxt: "Department",
                        sufIcon: Icons.arrow_downward_outlined,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 42.0, vertical: 47),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                            },
                            child: Text(AppStrings.signUp),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: AppColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
