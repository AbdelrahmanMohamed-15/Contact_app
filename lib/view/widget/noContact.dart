import 'package:flutter/material.dart';

noContact() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.error, size: 35, color: Color.fromARGB(255, 3, 86, 153)),
        SizedBox(height: 15),
        Text('No Contact Founded',
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold))
      ],
    ),
  );
}
