import 'package:flutter/material.dart';

class ImplicitAnimationScreen extends StatefulWidget {
  const ImplicitAnimationScreen({super.key});

  @override
  State<ImplicitAnimationScreen> createState() =>
      _ImplicitAnimationScreenState();
}

class _ImplicitAnimationScreenState extends State<ImplicitAnimationScreen> {
  bool _visible = true;

  void _trigger() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.blue, end: Colors.red),
              duration: const Duration(seconds: 5),
              curve: Curves.bounceInOut,
              builder: (context, value, child) {
                return Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png',
                  color: value,
                  colorBlendMode: BlendMode.colorBurn,
                );
              },
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: _trigger,
              child: const Text('Go'),
            )
          ],
        ),
      ),
    );
  }
}
