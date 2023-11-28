import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Allready have an account? Sign in',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kColorBlack,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
