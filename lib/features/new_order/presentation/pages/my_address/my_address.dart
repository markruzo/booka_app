import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/addjust_pickup.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/address_box.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/dialog_box.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/drop_off_checkbox.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/pickup_sheet.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/special_instructions.dart';
import 'package:flutter/material.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({
    super.key,
  });

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  String selectedText = '';
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _specialInstructionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 44),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              'My Address',
              style: TextStyle(
                fontFamily: 'Gustavo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorBlack,
              ),
            ),
            const SizedBox(height: 28),
            AddressBox(textEditingController: _addressController),
            const SizedBox(height: 8),
            const AddjustPickUp(),
            const SizedBox(height: 12),
            const PickkUpSheet(),
            const SizedBox(height: 4),
            const DropOffCheckbox(),
            const SizedBox(height: 12),
            SpecialInstructionInput(
                textEditingController: _specialInstructionController),
            const SizedBox(height: 12),
            const DialogBox(),
          ],
        ),
      ),
    );
  }
}
