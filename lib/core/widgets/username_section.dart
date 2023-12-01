import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserNameSection extends StatefulWidget {
  const UserNameSection(
      {super.key,
      required TextEditingController usernameController,
      required FocusNode userNameFocus,
      required bool showUserNameSuffixIcon});

  @override
  State<UserNameSection> createState() => _UserNameSectionState();
}

class _UserNameSectionState extends State<UserNameSection> {
  final TextEditingController _usernameController = TextEditingController();
  final FocusNode _userNameFocus = FocusNode();
  bool _showUserNameSuffixIcon = false;

  @override
  void initState() {
    super.initState();
    _userNameFocus.addListener(() {
      setState(() {
        _showUserNameSuffixIcon = _userNameFocus.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        controller: _usernameController,
        focusNode: _userNameFocus,
        decoration: InputDecoration(
          suffixIcon: _showUserNameSuffixIcon
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: GestureDetector(
                    onTap: () {
                      _usernameController.clear();
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
          hintText: 'Username',
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
