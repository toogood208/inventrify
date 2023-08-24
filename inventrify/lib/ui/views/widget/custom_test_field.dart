import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventrify/ui/common/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.validationMessage,
  });

  final String label;
  final TextEditingController controller;
  final String? validationMessage;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Text(
          widget.validationMessage == null ||
                  widget.validationMessage == "Correct!"
              ? ""
              : widget.validationMessage!,
          style: const TextStyle(color: Colors.red),
        ),
        TextField(
          controller: widget.controller,
          style: const TextStyle(color: Color(0XFF4c5775)),
          cursorColor: kcBackgroundColor,
          decoration: InputDecoration(
            suffixIcon: widget.validationMessage == "Correct!"
                ? const Icon(
                    Icons.check,
                    color: Color(0xFF4664af),
                  )
                : null,
            label: Text(widget.label),
            labelStyle: const TextStyle(color: Color(0XFFd1d0d9)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4664af)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4664af)),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({
    super.key,
    required this.label,
    required this.controller,
    this.validationMessage,
  });

  final String label;
  final TextEditingController controller;
  final String? validationMessage;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Text(
          widget.validationMessage == "Correct!" ||
                  widget.validationMessage == null
              ? ""
              : widget.validationMessage!,
          style: const TextStyle(color: Colors.red),
        ),
        TextField(
          obscureText: obscure,
          controller: widget.controller,
          style: const TextStyle(color: Color(0XFF4c5775)),
          cursorColor: kcBackgroundColor,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              child: widget.validationMessage == "Correct!"
                  ? const Icon(
                      Icons.check,
                      color: Color(0xFF4664af),
                    )
                  : Icon(
                      obscure ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFF4664af),
                    ),
            ),
            label: Text(widget.label),
            labelStyle: const TextStyle(color: Color(0XFFd1d0d9)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4664af)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4664af)),
            ),
          ),
        ),
      ],
    );
  }
}
