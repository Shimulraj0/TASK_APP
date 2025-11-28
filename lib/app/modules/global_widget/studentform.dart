import 'package:flutter/material.dart';

import 'From/custom_from.dart';

class StudentForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passController;

  const StudentForm({
    super.key,
    required this.emailController,
    required this.passController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      children: [
        CustomFrom(
          loginTitle: "Student Email",
          loginHent: "Enter your email",
          controller: emailController,
          isPassword: false,
          horizontalpd: 20,verticalpd: 2,
        ),
        
        ElevatedButton(onPressed: () {}, child: Text("Login as Student")),
      ],
    );
  }
}

class TeacherForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passController;

  const TeacherForm({
    super.key,
    required this.emailController,
    required this.passController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      children: [
        CustomFrom(
          loginTitle: "Teacher Email",
          loginHent: "Enter your email",
          controller: emailController,
          isPassword: false,verticalpd: 2,horizontalpd: 20,
        ),
        CustomFrom(
          loginTitle: "Password",
          loginHent: "Enter password",
          controller: passController,
          isPassword: true,horizontalpd: 20,verticalpd: 2,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Login as Teacher")),
      ],
    );
  }
}
