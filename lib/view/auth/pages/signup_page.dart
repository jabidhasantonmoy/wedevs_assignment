import 'package:flutter/material.dart';

import '../../../controller/app_theme/app_color.dart';
import '../../../controller/app_theme/text_style.dart';
import '../../../controller/utils/media_size.dart';
import '../widgets/auth_input_fields.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/signUpPage';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController nameController = TextEditingController();
    final TextEditingController userEmailController = TextEditingController();
    final TextEditingController userPasswordController =
        TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            fixedRatio(15),
            fixedRatio(15),
            fixedRatio(15),
            fixedRatio(15),
          ),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formKey,
                  child: SizedBox(
                    width: fixedRatio(308),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: fixedRatio(70)),
                        Image.asset(
                          'asset/others/avater_1.png',
                          height: fixedRatio(150),
                          width: fixedRatio(150),
                        ),
                        SizedBox(height: fixedRatio(40)),
                        authInputField(
                          controller: nameController,
                          prefixIcon: Icons.man,
                          hintText: 'Name',
                          validator: (value) {
                            return null;
                          },
                        ),
                        SizedBox(height: fixedRatio(20)),
                        authInputField(
                          controller: userEmailController,
                          prefixIcon: Icons.email_outlined,
                          hintText: 'Email',
                          validator: (value) {
                            return null;
                          },
                        ),
                        SizedBox(height: fixedRatio(20)),
                        authInputField(
                          controller: userPasswordController,
                          prefixIcon: Icons.lock_outline_rounded,
                          hintText: 'Password',
                          validator: (value) {
                            return null;
                          },
                        ),
                        SizedBox(height: fixedRatio(20)),
                        authInputField(
                          prefixIcon: Icons.lock_outline_rounded,
                          hintText: 'Confirm Password',
                          validator: (value) {
                            return null;
                          },
                        ),
                        SizedBox(height: fixedRatio(7)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: TStyle.roboto(
                                fontSize: 13,
                                color: AppColor.textA4A9AF,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: fixedRatio(30)),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: fixedRatio(61),
                                // width: fixedRatio(308),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor.buttonF75F55,
                                  borderRadius:
                                      BorderRadius.circular(fixedRatio(10)),
                                ),
                                child: Text(
                                  'Sign Up',
                                  style: TStyle.roboto(
                                    whiteText: true,
                                    fontSize: fixedRatio(17),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: fixedRatio(30)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: fixedRatio(56),
                              width: fixedRatio(56),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColor.cardColor,
                                borderRadius:
                                    BorderRadius.circular(fixedRatio(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'asset/others/facebook_1.png',
                                height: fixedRatio(22),
                                width: fixedRatio(12),
                              ),
                            ),
                            SizedBox(width: fixedRatio(15)),
                            Container(
                              height: fixedRatio(56),
                              width: fixedRatio(56),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColor.cardColor,
                                borderRadius:
                                    BorderRadius.circular(fixedRatio(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'asset/others/google_1.png',
                                height: fixedRatio(22),
                                width: fixedRatio(22),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: fixedRatio(30)),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(LoginPage.routeName);
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: TStyle.roboto(
                                fontSize: fixedRatio(17),
                                fontWeight: FontWeight.w300,
                                color: AppColor.text383C40,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Login',
                                  style: TStyle.roboto(
                                    fontSize: fixedRatio(17),
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF2893E3),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
