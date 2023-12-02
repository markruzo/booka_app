import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpecialInstructionInput extends StatefulWidget {
  const SpecialInstructionInput({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  State<SpecialInstructionInput> createState() =>
      _SpecialInstructionInputState();
}

class _SpecialInstructionInputState extends State<SpecialInstructionInput> {
  bool isTextFieldEnabled = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          isTextFieldEnabled = !isTextFieldEnabled;
          debugPrint('isTextFieldEnabled: $isTextFieldEnabled');
        });
      },
      child: TextField(
        textAlign: TextAlign.start,
        controller: widget._textEditingController,
        cursorColor: kColorBlack,
        enabled: isTextFieldEnabled,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
          hintText: 'Special Instructions',
          hintStyle: const TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: kColorBlack,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              widget._textEditingController.clear();
            },
            child: SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/svg/x24/line/close-circle.svg',
                  height: 20,
                  width: 20,
                  colorFilter: ColorFilter.mode(
                      kColorBlack.withOpacity(0.5), BlendMode.srcIn),
                ),
              ),
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: kColorBlack.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kColorWater),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kColorBlack.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
