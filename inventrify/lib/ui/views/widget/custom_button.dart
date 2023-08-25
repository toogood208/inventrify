import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.isSuffix = false,
      this.isPrefix = false,
      this.isBusy = false});

  final String title;
  final bool isSuffix;
  final bool isPrefix;
  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(16.r),
        padding: EdgeInsets.all(16.r),
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
            color: const Color(0xFF4664af),
            borderRadius: BorderRadius.circular(50.r)),
        child: Center(
          child: isBusy
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      if (isPrefix)
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                      if (isSuffix)
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                    ]),
        ),
      ),
    );
  }
}
