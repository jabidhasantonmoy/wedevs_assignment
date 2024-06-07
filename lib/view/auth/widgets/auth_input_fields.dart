import 'package:flutter/material.dart';

import '../../../controller/app_theme/app_color.dart';
import '../../../controller/app_theme/text_style.dart';
import '../../../controller/utils/media_size.dart';

// Figma Icons gets inappropriate after downloading.

class AuthPasswordField extends StatefulWidget {
  const AuthPasswordField({super.key});

  @override
  State<AuthPasswordField> createState() => _AuthPasswordFieldState();
}

class _AuthPasswordFieldState extends State<AuthPasswordField> {
  bool _loginPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          prefixIconColor: AppColor.icon7C8592,
          suffixIcon: IconButton(
            icon: Icon(
              color: AppColor.iconA4A9AFC7.withOpacity(.78),
              _loginPasswordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () {
              setState(() {
                _loginPasswordVisible = !_loginPasswordVisible;
              });
            },
          ),
          hintText: 'Password',
          hintStyle: TStyle.roboto(
            color: AppColor.textA4A9AF,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(fixedRatio(10)),
            borderSide: BorderSide(
              width: fixedRatio(1),
              color: AppColor.cardColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(fixedRatio(10)),
            borderSide: BorderSide(
              width: fixedRatio(1),
              color: AppColor.cardColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(fixedRatio(10)),
            borderSide: BorderSide(
              width: fixedRatio(1),
              color: AppColor.cardColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(fixedRatio(10)),
            borderSide: BorderSide(
              width: fixedRatio(1),
              color: AppColor.cardColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(fixedRatio(10)),
            borderSide: BorderSide(
              width: fixedRatio(1),
              color: AppColor.cardColor,
            ),
          ),
        ),
      ),
    );
  }
}

Widget authInputField({IconData? prefixIcon, String? hintText}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(fixedRatio(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 3,
          blurRadius: 4,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: AppColor.icon7C8592,
        hintText: hintText,
        hintStyle: TStyle.roboto(
          color: AppColor.textA4A9AF,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fixedRatio(10)),
          borderSide: BorderSide(
            width: fixedRatio(1),
            color: AppColor.cardColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fixedRatio(10)),
          borderSide: BorderSide(
            width: fixedRatio(1),
            color: AppColor.cardColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fixedRatio(10)),
          borderSide: BorderSide(
            width: fixedRatio(1),
            color: AppColor.cardColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fixedRatio(10)),
          borderSide: BorderSide(
            width: fixedRatio(1),
            color: AppColor.cardColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fixedRatio(10)),
          borderSide: BorderSide(
            width: fixedRatio(1),
            color: AppColor.cardColor,
          ),
        ),
      ),
    ),
  );
}
