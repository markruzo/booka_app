import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/signup/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SignupPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          color: kColorWater,
        ),
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
                      'Signup with Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kColorClean,
                      ),
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
