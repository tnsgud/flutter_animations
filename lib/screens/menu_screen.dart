import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/implicit_anmiation_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final Map<String, Widget> _screens = {
    'implicit': const ImplicitAnimationScreen()
  };

  void _onPush({required String name}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _screens[name] ?? const Text('no screen name'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _onPush(name: 'implicit'),
              child: const Text('Implicit Animations'),
            ),
          ],
        ),
      ),
    );
  }
}
