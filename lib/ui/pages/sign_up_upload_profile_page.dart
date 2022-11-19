import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/form.dart';

class SignupProfilePage extends StatelessWidget {
  const SignupProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_light.png'))),
          ),
          Text('Sign Up & \nGrow Your Finance',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold)),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   height: 120,
                //   width: 120,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle, color: lightBackgroundColor),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       width: 32,
                //     ),
                //   ),
                // ),

                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img_profile.png'))),
                ),

                SizedBox(
                  height: 8,
                ),
                Text(
                  'Your Name',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  tittle: 'Masukan Pin Baru',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-ktp');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
