import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductQuantityTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isEnabled;
  const ProductQuantityTextField({
    super.key,
    required this.controller,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 65,
          height: 42,
          child: TextField(
            controller: controller,
            enabled: isEnabled,
            cursorColor: const Color(0xFFAA3F00),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Qty.",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFFAA3F00),
                ),
              ),
              hintStyle: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
