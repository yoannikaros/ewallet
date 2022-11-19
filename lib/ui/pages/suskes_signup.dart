import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat akun anda \n berhasil dibuat',
              style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Deskripsi',
              style: greyTextStyle.copyWith(fontWeight: medium, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'Get Started',
              width: 183,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
