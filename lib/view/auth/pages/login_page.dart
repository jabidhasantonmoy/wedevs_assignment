import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedevs_assignment/controller/app_theme/app_color.dart';
import 'package:wedevs_assignment/controller/app_theme/text_style.dart';

import '../../../controller/utils/media_size.dart';
import '../widgets/auth_input_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                          'asset/logo/logo_1.png',
                          height: fixedRatio(50),
                          width: fixedRatio(165),
                        ),
                        SizedBox(height: fixedRatio(65)),
                        Text(
                          'Sign In',
                          style: GoogleFonts.roboto(
                            fontSize: fixedRatio(25),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: fixedRatio(40)),
                        authInputField(
                          controller: userEmailController,
                          prefixIcon: Icons.email_outlined,
                          hintText: 'Email',
                          validator: (value) {
                            return null;
                          },
                        ),
                        SizedBox(height: fixedRatio(20)),
                        AuthPasswordField(
                          controller: userPasswordController,
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
                                  'Login',
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
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Create New Account',
                            style: TStyle.roboto(
                              fontSize: fixedRatio(17),
                              fontWeight: FontWeight.w300,
                              color: AppColor.text383C40,
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
