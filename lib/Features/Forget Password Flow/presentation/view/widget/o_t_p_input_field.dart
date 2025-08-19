import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPInputField extends StatefulWidget {
  final int length;
  final void Function(String) onCompleted;

  const OTPInputField({
    super.key,
    this.length = 6,
    required this.onCompleted,
  });

  @override
  State<OTPInputField> createState() => _OTPInputFieldState();
}

class _OTPInputFieldState extends State<OTPInputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: _controller,
      length: widget.length,
      appContext: context,
      keyboardType: TextInputType.number,
      autoFocus: true,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 56,
        fieldWidth: 56,
        activeFillColor: Color(0xffF3F4F6),
        selectedFillColor: Colors.grey[200],
        inactiveFillColor: Colors.grey[100],
      ),
      onChanged: (value) {},
      onCompleted: widget.onCompleted,
    );
  }
}
