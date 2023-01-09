import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          color: Colors.grey,
          child: Center(
            child: AnimatorLogo(),
          )),
    );
  }
}

class AnimatorLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 100,end: 400),
      cycles: 0,
      duration: const Duration(seconds: 1),
      builder: (context, animatorState, child) => Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          height: animatorState.value,
          width: animatorState.value,
          child: Image.asset('images/logo.jpg'),
        ),
      ),
    );
  }
}
