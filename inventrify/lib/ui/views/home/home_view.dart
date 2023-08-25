import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventrify/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 250.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.r),
                      bottomLeft: Radius.circular(30.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30.r),
                            bottomLeft: Radius.circular(30.r),
                          ),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/design.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                top: 180.h,
                left: 22.w,
                child: const AnalyticsWidget(),
              ),
              Positioned(
                top: 70.h,
                right: 20.w,
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 32.r,
                ),
              ),
              Positioned(
                top: 70.h,
                left: 140.w,
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 32.sp),
                ),
              ),
            ],
          )),
      backgroundColor: const Color(0XFFF2F7FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120.h,
              ),
              Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recent ",
                            style: TextStyle(
                              color: const Color(0xFF4c5775),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                              color: const Color(0xFF4c5775),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: const Color(0xFFd4defc),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: const Center(
                              child: Icon(Icons.discount_outlined),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Asset tagging",
                                style: TextStyle(
                                  color: const Color(0xFF567df4),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "you tapped HP Laptop coreI2...",
                                style: TextStyle(
                                  color: const Color(0xFF4c5775),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "2s ago",
                            style: TextStyle(
                              color: const Color(0xFF4c5775),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4c5775),
        onPressed: () {},
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class AnalyticsWidget extends StatelessWidget {
  const AnalyticsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: 320.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.r,
            ),
          ),
          boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey.shade100)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: const Color(0XFFf4f5f6),
                    borderRadius: BorderRadius.circular(20.r)),
                child: const Center(
                  child: Icon(Icons.fit_screen),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Scanned",
                    style: TextStyle(
                      color: const Color(0xFF4c5775),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Assets that have been scanned/confirmed",
                    style: TextStyle(
                      color: const Color(0xFF4c5775),
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
              Text(
                "20",
                style: TextStyle(
                  color: const Color(0xFF4c5775),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xFF4c5775),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: const Color(0XFFf4f5f6),
                    borderRadius: BorderRadius.circular(20.r)),
                child: const Center(
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Transfered",
                    style: TextStyle(
                      color: const Color(0xFF4c5775),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Approaved Assets to be relocated from here",
                    style: TextStyle(
                      color: const Color(0xFF4c5775),
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
              Text(
                "0",
                style: TextStyle(
                  color: const Color(0xFF4c5775),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
