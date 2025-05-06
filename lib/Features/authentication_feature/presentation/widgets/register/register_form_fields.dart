import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Cores/app_colors.dart';

class RegisterFormFields extends StatelessWidget {
  const RegisterFormFields({super.key});

  Widget _buildFormField({
    required String hintText,
    required TextInputType inputType,
    bool obscureText = false,
    Widget? prefixIcon,
  }) {
    return Container(
      width: 320.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50).r,
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 22.w,
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50).r,
            borderSide: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFormField(
          hintText: "Enter your name",
          inputType: TextInputType.name,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: _buildFormField(
            hintText: "User name",
            inputType: TextInputType.text,
          ),
        ),
        _buildFormField(
          hintText: "Email",
          inputType: TextInputType.emailAddress,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: _buildFormField(
            hintText: "Password",
            inputType: TextInputType.text,
            obscureText: true,
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
