import 'package:clothing/login_register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/themes/colors.dart';
import '../constants/custom_button.dart';
import '../constants/form_fieled.dart';
import '../constants/pass_form_field.dart';
import '../constants/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
                Text('Sign in', style: Styles.style30),
                SizedBox(
                  height: 20,
                ),
                Text('Welcome back, you have been missed',
                    style: Styles.style16G400),
                SizedBox(
                  height: 40,
                ),
                CustomTextForm(
                    width: MediaQuery.sizeOf(context).width / 1.5,
                    labelText: 'Email',
                    controller: emailController),
                SizedBox(
                  height: 20,
                ),
                PasswordCustomTextForm(
                    labelText: 'Password', controller: passwordController),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forget password?',
                  style: Styles.style15color,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign in',
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
                      width: 100,
                      color: Colors.grey[400],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Or sign in with',
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
                          'lib/assets/images/google.svg',
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                      style: Styles.style15,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ));
                        },
                        child: Text(
                          'Sign up',
                          style: Styles.style15color,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
