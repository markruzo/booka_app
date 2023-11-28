import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/services/google_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        User? user = await signInWithGoogle();
        if (user != null) {
          print('User signed in: ${user.displayName}');

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const BottomBar(),
            ),
          );
        } else {
          print('Failed to sign in with Google.');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: kColorDisabled,
          borderRadius: BorderRadius.circular(51),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: SvgPicture.asset('assets/icons/social/google.svg'),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign up with Google',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kColorBlack,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
