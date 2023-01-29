//data validations for forms//
//email,password rules,phone numbers etc..//
class DataValidator {
  static String? isNullOrEmpty(String? value) {
    bool isNullOrEmpty = (value == null) || value.trim().isEmpty;
    if (isNullOrEmpty) {
      return "please enter a value";
    }
    return null;
  }

  static String? isValidEmail(String? value) {
    String? isEmptyEmail = isNullOrEmpty(value);
    if (isEmptyEmail != null) {
      return isEmptyEmail;
    }
    bool isEmailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
   if(!isEmailValid){
     return "Invalid Email";
   }
   return null;
  }

  static String? isValidPassword(String? value) {
    String? isEmptyPassword = isNullOrEmpty(value);
    if (isEmptyPassword != null) {
      return isEmptyPassword;
    }
    bool isPasswordValid = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$').hasMatch(value!);
    if(!isPasswordValid){
      return "Invalid Password";
    }
    return null;
  }
}
