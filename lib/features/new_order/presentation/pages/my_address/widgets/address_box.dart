import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressBox extends StatefulWidget {
  const AddressBox({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  _AddressBoxState createState() => _AddressBoxState();
}

class _AddressBoxState extends State<AddressBox> {
  bool isTextFieldEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Address is',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            setState(() {
              isTextFieldEnabled = !isTextFieldEnabled;
            });
          },
          child: TextField(
            maxLines: 2,
            textAlign: TextAlign.start,
            controller: widget._textEditingController,
            cursorColor: kColorBlack,
            enabled: isTextFieldEnabled, // Use the boolean variable here
            onChanged: (text) {
              if (widget._textEditingController.text.split('\n').length > 2) {
                widget._textEditingController.text = widget
                    ._textEditingController.text
                    .split('\n')
                    .take(2)
                    .join('\n');
              }
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 16, top: 12, bottom: 12),
              hintText: 'Mustermann Str. 4, Aufgang B, 12345 Musterhausen',
              hintStyle: const TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: kColorBlack,
              ),
              suffixIcon: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/x24/line/s-down.svg',
                      height: 24,
                      width: 24,
                      colorFilter: ColorFilter.mode(
                          kColorBlack.withOpacity(0.5), BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kColorWater),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
