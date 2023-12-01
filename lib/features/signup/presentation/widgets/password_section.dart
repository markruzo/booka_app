import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordSection extends StatelessWidget {
  const PasswordSection({
    super.key,
    required TextEditingController passwordController,
    required bool showPasswordSuffixIcon,
    required bool showPassword,
    required FocusNode passwordFocus,
  })  : _passwordController = passwordController,
        _showPasswordSuffixIcon = showPasswordSuffixIcon,
        _showPassword = showPassword,
        _passwordFocus = passwordFocus;

  final TextEditingController _passwordController;
  final bool _showPasswordSuffixIcon;
  final bool _showPassword;
  final FocusNode _passwordFocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kColorBlack.withOpacity(0.3)),
        suffixIcon: _showPasswordSuffixIcon
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    _showPassword
                        ? 'assets/icons/svg/x24/line/eye.svg'
                        : 'assets/icons/svg/x24/line/eye-off.svg',
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
      obscureText: !_showPassword,
      focusNode: _passwordFocus,
    );
  }
}
