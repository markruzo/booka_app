import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordSection extends StatefulWidget {
  const PasswordSection(
      {super.key,
      required TextEditingController passwordController,
      required bool showPasswordSuffixIcon,
      required bool showPassword,
      required FocusNode passwordFocus});

  @override
  State<PasswordSection> createState() => _PasswordSectionState();
}

class _PasswordSectionState extends State<PasswordSection> {
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  bool _showPasswordSuffixIcon = false;
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    _passwordFocus.addListener(() {
      setState(() {
        _showPasswordSuffixIcon = _passwordFocus.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        obscureText: !_showPassword,
        controller: _passwordController,
        focusNode: _passwordFocus,
        decoration: InputDecoration(
          suffixIcon: _showPasswordSuffixIcon
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: 12,
                    bottom: 12,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                      debugPrint('Toggle password visibility');
                    },
                    child: SvgPicture.asset(
                      _showPassword
                          ? 'assets/icons/svg/x24/line/eye.svg'
                          : 'assets/icons/svg/x24/line/eye-off.svg',
                      colorFilter: ColorFilter.mode(
                        kColorBlack.withOpacity(0.3),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                )
              : null,
          hintText: 'Password',
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kColorBlack.withOpacity(0.5),
          ),
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
      ),
    );
  }
}
