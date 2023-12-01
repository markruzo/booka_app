import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/signin/presentation/pages/signin_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninSection extends StatelessWidget {
  const SigninSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kColorBlack,
            ),
            text: 'Allready have an account? ',
            children: [
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SigninPage()));
                  },
                text: 'Signin',
                style: const TextStyle(
                  color: kColorWater,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
