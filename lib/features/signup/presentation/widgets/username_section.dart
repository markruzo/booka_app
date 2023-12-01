import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserNameSection extends StatelessWidget {
  const UserNameSection({
    super.key,
    required TextEditingController usernameController,
    required FocusNode userNameFocus,
    required bool showUserNameSuffixIcon,
  })  : _usernameController = usernameController,
        _userNameFocus = userNameFocus,
        _showUserNameSuffixIcon = showUserNameSuffixIcon;

  final TextEditingController _usernameController;
  final FocusNode _userNameFocus;
  final bool _showUserNameSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _usernameController,
      focusNode: _userNameFocus,
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kColorBlack.withOpacity(0.3),
        ),
        suffixIcon: _showUserNameSuffixIcon
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: GestureDetector(
                  onTap: () {
                    _usernameController.clear();
                    debugPrint('Username');
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
    );
  }
}
