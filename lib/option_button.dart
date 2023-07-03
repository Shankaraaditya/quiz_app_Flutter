import 'package:flutter/material.dart';
class OptionButton extends StatelessWidget {
    OptionButton({
    super.key,
    required this.answer,
    required this.ontap,
    });

   final String answer;
   final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40
      ),
      backgroundColor: const Color.fromARGB(255, 26, 17, 104),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))

    ),
    onPressed: ontap,
    child: Text(answer),
    );
  }
}
