import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_string/static_string.dart';

class LoginPageController extends GetxController {
  var currentindex=0.obs;
  var isObscure = true.obs;
  final CarouselController carouselController =CarouselController();
  void  changeindex(int index){

    currentindex.value=index;
  }
  var selectedIndex = 0.obs;
  void changeTab(int index) {
    selectedIndex.value = index;
  }

  void togglePassword() {
    isObscure.value = !isObscure.value;
  }

  final formKey = GlobalKey<FormState>();

  // Reactive variables

  RxBool remember = false.obs;

  RxString fNameError = ''.obs;
  RxString emailError = ''.obs;
  RxString adressError = ''.obs;
  RxString passError = ''.obs;
  RxString confPassError = ''.obs;
  // TextEditingControllers
  TextEditingController fNameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController adressC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController conPassC = TextEditingController();
  // Toggle password visibility
  // void togglePassword() {
  //   isObscure.value = !isObscure.value;
  // }
  // void toggleMore() {
  //   showMore.value = !showMore.value;
  // }
  // RxBool showMore = false.obs;

  // Login function with Remember Me check
  // Future<bool> loginChack() async {
  //   bool isSuces= await login();
  //   if (remember.value == false && isSuces==false) {
  //     MySnackbar.showWarning(
  //       'Warning',
  //       "Please check 'Remember me' to continue",
  //       0xffFFFFFF,
  //       0xffF54927,
  //     );
  //     return false;
  //   } else {
  //     if (formKey.currentState!.validate()) {
  //       print("Login Successful");
  //       return true;
  //     } else {
  //       print("Validation Failed");
  //       return false;
  //     }
  //   }
  // }



  String? validateNameAdre(String? value, bool isName) {
    if (value == null || value.isEmpty) {
      isName
          ? fNameError.value = "First Name cannot be empty"
          : adressError.value = "Address cannot be empty";
      return '';
    }
    isName ? fNameError.value = '' : adressError.value = '';
    return null;
  }

  String? validator(String? value, bool isEmail, bool isConPass) {
    final emailRegex = StaticString.emailRegex;
    final passRegex = StaticString.passRegex;

    //  EMPTY CHECK
    return (value == null || value.isEmpty)
        ? (isConPass
        ? (confPassError.value =
    "Confirm Password can't be empty")
        : isEmail
        ? (emailError.value = "Email cannot be empty")
        : (passError.value = "Password cannot be empty")) !=
        null
        ? ''
        : ''
    //  CONFIRM PASSWORD CHECK
        : isConPass
        ? (value != passC.text
        ? (confPassError.value = "Password does not match")
        : (confPassError.value = "")) !=
        null
        ? (value != passC.text ? '' : null)
        : null
    //  REGEX CHECK (Email / Password)
        : !(isEmail ? emailRegex.hasMatch(value) : passRegex.hasMatch(value))
        ? (isEmail
        ? (emailError.value = "Enter a valid email address")
        : (passError.value =
    "Password must contain A-Z, a-z, 0-9 & min 6 chars")) !=
        null
        ? ''
        : ''
    // CLEAR ERROR (Valid case)
        : (isEmail ? (emailError.value = "") : (passError.value = "")) != null
        ? null
        : null;
  }

  @override
  void onClose() {
    fNameC.dispose();
    emailC.dispose();
    adressC.dispose();
    passC.dispose();
    conPassC.dispose();

    super.onClose();
  }







}
