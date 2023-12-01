import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({
    super.key,
    required TextEditingController emailController,
    required bool showEmailSuffixIcon,
    required FocusNode emailFocus,
  })  : _emailController = emailController,
        _showEmailSuffixIcon = showEmailSuffixIcon,
        _emailFocus = emailFocus;

  final TextEditingController _emailController;
  final bool _showEmailSuffixIcon;
  final FocusNode _emailFocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: null,
      autovalidateMode: null,
      controller: _emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kColorBlack.withOpacity(0.3)),
        suffixIcon: _showEmailSuffixIcon
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: GestureDetector(
                  onTap: () {
                    _emailController.clear();
                    debugPrint('Email');
                  },
                  child: SvgPicture.asset(
                    'assets/icons/svg/x24/line/close-circle.svg',
                    colorFilter: ColorFilter.mode(
                      kColorBlack.withOpacity(0.2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
            : null,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kColorWater),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kColorBlack.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(8),
        ),
        errorStyle: const TextStyle(color: Colors.redAccent),
      ),
      obscureText: false,
      focusNode: _emailFocus,
    );
  }
}
