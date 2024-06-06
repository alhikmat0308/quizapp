import 'package:flutter/material.dart';

class next_button extends StatelessWidget {
  const next_button({
    super.key,
    required this.onPressed,
    required this.lable,
  });

  final VoidCallback? onPressed;
  final String lable;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: height * 0.08,
        width: width * .5,
        child: Card(
          color: onPressed != null
              ? Colors.orange.shade600
              : Colors.orange.shade700,
          child: Center(
            child: Text(
              lable,
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
