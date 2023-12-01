import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailSection extends StatefulWidget {
  const EmailSection({
    super.key,
    required TextEditingController emailController,
    required bool showEmailSuffixIcon,
    required FocusNode emailFocus,
  });

  @override
  State<EmailSection> createState() => _EmailSectionState();
}

class _EmailSectionState extends State<EmailSection> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  bool _showEmailSuffixIcon = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() {
      setState(() {
        _showEmailSuffixIcon = _emailFocus.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        controller: _emailController,
        focusNode: _emailFocus,
        decoration: InputDecoration(
          suffixIcon: _showEmailSuffixIcon
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: GestureDetector(
                    onTap: () {
                      _emailController.clear();
                      debugPrint('Toggle visibility');
                    },
                    child: SvgPicture.asset(
                      'assets/icons/svg/x24/line/close-circle.svg',
                      colorFilter: ColorFilter.mode(
                        kColorBlack.withOpacity(0.3),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                )
              : null,
          hintText: 'Email',
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
