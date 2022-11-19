import 'package:ewallet/ui/pages/home_page.dart';
import 'package:ewallet/ui/pages/onboarding_page.dart';
import 'package:ewallet/ui/pages/sign_in_page.dart';
import 'package:ewallet/ui/pages/sign_up_set_KTP_page.dart';
import 'package:ewallet/ui/pages/sign_up_upload_profile_page.dart';
import 'package:ewallet/ui/pages/signup_page.dart';
import 'package:ewallet/ui/pages/suskes_signup.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/signin': (context) => const SignInPage(),
        '/Sign-up': (context) => const SignUpPage(),
        '/sign-up-upload-profile': (context) => const SignupProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpSetKTP(),
        '/sign-up-success': (context) => const SuccessSignUpPage(),
        '/home': (context) => const HomePage()
      },
    );
  }
}
