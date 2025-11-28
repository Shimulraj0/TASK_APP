import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_img/static_img.dart';

class CustomFrom extends StatelessWidget {
  const CustomFrom({
    super.key,
    required this.loginTitle,
    required this.loginHent,
    required this.isPassword,
    required this.controller,
    required this.horizontalpd,
    required this.verticalpd,
    this.validator,
    this.mainController,
    this.isGaFrom = false,
    this.maxLines = 3,
    this.maxLength = 4,
    this.isEditProf = true,
    this.asdarro = false,
    this.issecarro = false,  this.focusNode,  this.onEditingComplete, this.onTap,
  });
  final String loginTitle;
  final String loginHent;
  final double horizontalpd;
  final double verticalpd;
  final bool isPassword;
  final int maxLines;
  final int maxLength;
  final bool isGaFrom;
  final bool asdarro;
  final bool issecarro;
  final bool isEditProf;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onTap;
  final dynamic mainController;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        issecarro
            ? SizedBox()
            : Text(
                loginTitle,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
        SizedBox(height: 12),

        Container(
          padding: EdgeInsets.symmetric(
            vertical: verticalpd,
            horizontal: horizontalpd,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
    // ---------PasswordFiled
          child: isPassword
              ? Obx(
                  () => TextFormField(
                    controller: controller,
                    validator: validator,
                    obscureText: mainController!.isObscure.value,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(height: 0, fontSize: 0),
                      border: InputBorder.none,
                      hintText: loginHent,
                      suffixIcon: IconButton(
                        icon: Icon(
                          mainController!.isObscure.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: mainController!.togglePassword,
                      ),
                    ),
                  ),
                )
          // -------EmailFiled
              : TextFormField(
                  controller: controller,
                  validator: validator,
                  focusNode: focusNode,
                  onEditingComplete: onEditingComplete,
                  maxLines: isGaFrom ? maxLength : null,
                  maxLength: isGaFrom ? maxLines : null,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(height: 0, fontSize: 0),
                    border: InputBorder.none,
                    hintText: loginHent,
                    suffixIcon: issecarro
                        ? Card(
                            color: Color(StaticColors.brandColor),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                StaticImg.search,
                                colorFilter: ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          )
                        : asdarro
                        ? InkWell(
                      onTap:onTap ,
                        child: Icon(Icons.keyboard_arrow_down, size: 20))
                        : SizedBox(width: 0),
                  ),
                ),
        ),
      ],
    );
  }
}
