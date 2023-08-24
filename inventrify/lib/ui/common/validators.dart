String? passwordValidator(
  String? value,
) {
  int minimumLength = 8;
  if (value == "") {
    return null;
  } else if (value != null && value.length < minimumLength) {
    return "Minimum of 8 Characters";
  }
  if (value!.length >= minimumLength) {
    return "Correct!";
  }
  return null;
}

String? emailValidator(String? value) {
  if (value == "") {
    return null;
  } else if (value != null &&
      !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
          .hasMatch(value)) {
    return "Invalid email";
  }
  if (RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
      .hasMatch(value!)) {
    return "Correct!";
  }
  return null;
}

String? phoneNumberValidator({String? value}) {
  if (value == "") {
    return "Field cannot be empty";
  } else if (value != null && !value.startsWith('234')) {
    return "Number should  start with 234";
  } else if (value != null && value.length < 13) {
    return "Invalid phone number";
  }
  return null;
}
