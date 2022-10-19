import 'package:flutter/material.dart';

companyWidget({dynamic size, double? width, double? height}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.008),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey[200]!, width: 1.5)),
        child: Image.asset(
          'assets/images/log1.png',
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.008),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey[200]!, width: 1.5)),
        child: Image.asset(
          'assets/images/log2.png',
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.008),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey[200]!, width: 1.5)),
        child: Image.asset(
          'assets/images/log3.png',
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.008),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey[200]!, width: 1.5)),
        child: Image.asset(
          'assets/images/log4.png',
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}
