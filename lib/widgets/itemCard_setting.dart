import 'package:flutter/material.dart';
Widget itemCard({String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey[600],)
      ],
    ),
  );
}