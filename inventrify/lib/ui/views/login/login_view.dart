import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventrify/ui/common/validators.dart';
import 'package:inventrify/ui/views/login/login_view.form.dart';
import 'package:inventrify/ui/views/widget/custom_button.dart';
import 'package:inventrify/ui/views/widget/custom_test_field.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: "email", validator: emailValidator),
  FormTextField(name: "password", validator: passwordValidator)
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F7FF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                // color: Colors.black12,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/design-2.png",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Text(
              "Sign in",
              style: TextStyle(color: const Color(0xFF4664af), fontSize: 60.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.r),
              child: Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        validationMessage: viewModel.emailValidationMessage,
                        controller: emailController,
                        label: "Email Address",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomPasswordTextField(
                        validationMessage: viewModel.passwordValidationMessage,
                        controller: passwordController,
                        label: "Password",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF4664af),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              isBusy: viewModel.isBusy,
              isSuffix: true,
              title: "Sign in",
            ),
            RichText(
              text: const TextSpan(
                  style: TextStyle(color: Color(0XFF4c5775)),
                  children: [
                    TextSpan(text: "or"),
                    TextSpan(
                        text: " Register",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " a new account"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    super.onViewModelReady(viewModel);
    syncFormWithViewModel(viewModel);
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}

