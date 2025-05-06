import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Cores/app_colors.dart';

class LoginFormFields extends StatelessWidget {
  const LoginFormFields({super.key});

  Widget _buildFormField({
    required String text,
    bool obscureText = false,
    Widget? prefixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 3.h),
        Container(
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
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 22.w,
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50).r,
                borderSide: BorderSide(color: const Color(0xFFD9D9D9)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFormField(text: 'Username or Email'),
        Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
          child: _buildFormField(
            text: 'Password',
            obscureText: true,
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility_outlined),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
