import 'package:flutter/material.dart';

class CouresButton extends StatelessWidget {
  const CouresButton({super.key, required this.onPressed, required this.lable});

  final VoidCallback? onPressed;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(lable),
          style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white),
        ),
      ),
    );
  }
}
