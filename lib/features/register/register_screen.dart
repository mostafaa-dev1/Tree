import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/form_fieled.dart';
import '../../core/widgets/pass_form_field.dart';
import '../../core/themes/text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign up', style: Styles.style35),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Fill your information below or register\nwith your social account',
                    textAlign: TextAlign.center,
                    style: Styles.style16G400),
                SizedBox(
                  height: 40,
                ),
                CustomTextForm(
                    width: width / 1.2,
                    labelText: 'Name',
                    controller: nameController),
                SizedBox(
                  height: 20,
                ),
                CustomTextForm(
                    width: width / 1.2,
                    labelText: 'Email',
                    controller: emailController),
                SizedBox(
                  height: 20,
                ),
                PasswordCustomTextForm(
                  labelText: 'Password',
                  controller: passwordController,
                  width: width / 1.2,
                ),
                SizedBox(
                  height: 20,
                ),
                PasswordCustomTextForm(
                  labelText: 'Confirm password',
                  controller: passwordController,
                  width: width / 1.2,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  text: 'Sign up',
                  width: MediaQuery.sizeOf(context).width / 1.8,
                  color: AppColors.mainColor,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.sizeOf(context).width / 8,
                      color: Colors.grey[400],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'OR',
                      style: Styles.style16G400,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.sizeOf(context).width / 8,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 45,
                    width: MediaQuery.sizeOf(context).width / 1.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.grey[300]!)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'lib/assets/images/svg/google.svg',
                          height: 25,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with google',
                          style: Styles.style15,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
