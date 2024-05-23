import 'package:flutter/material.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.btnText,
  });

  final void Function() onPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepOrange,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          btnText,
          style: FontStyles.font18,
        ),
      ),
    );
  }
}
