import 'package:fashion1/Homepage.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Homepage(),
      },
    ),
  );
}