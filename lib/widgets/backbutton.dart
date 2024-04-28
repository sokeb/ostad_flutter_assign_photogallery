import 'package:flutter/material.dart';

class ButtonOfBack extends StatelessWidget {
  const ButtonOfBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AspectRatio(
        aspectRatio: 40/40,
        child: Container (
            margin:const EdgeInsets.all(9),
            decoration: const BoxDecoration(
              color: Color(0xff7ACA5E),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xffFAFAFA), size: 30))
      ),
      onTap: () {
        Navigator.pop(context);
      } ,
    );
  }
}