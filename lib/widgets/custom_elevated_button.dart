import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, required this.text ,required this.onPressed
  });
  final String text;
   final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(onPressed: onPressed, child: Text(text, style: TextStyle(
        color: Colors.black,
        fontSize: 16
      ),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      ),
    );
  }
}
