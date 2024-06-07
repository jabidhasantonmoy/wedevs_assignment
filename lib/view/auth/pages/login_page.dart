import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/app_theme/text_style.dart';
import '../../../controller/utils/media_size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final TextEditingController _userEmailController = TextEditingController();
    final TextEditingController _userPasswordController =
        TextEditingController();
    final TextEditingController _instituteNameController =
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
                  key: _formKey,
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
                        TextFormField(
                          controller: _userEmailController,
                          style: TStyle.roboto(),
                          decoration: const InputDecoration(
                            hintText: 'Email',
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
