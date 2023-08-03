import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
          backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
