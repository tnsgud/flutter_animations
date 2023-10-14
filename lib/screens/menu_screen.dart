import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/explicit_animation_screen.dart';
import 'package:flutter_animations_masterclass/screens/implicit_animation_screen.dart';
import 'package:flutter_animations_masterclass/screens/music_player_screen.dart';
import 'package:flutter_animations_masterclass/screens/swiping_cards_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final Map<String, Widget> _screens = {
    'implicit': const ImplicitAnimationScreen(),
    'explicit': const ExplicitAnimationScreen(),
    'swiping cards': const SwipingCardsScreen(),
    'music player': const MusicPlayerScreen(),
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
            ElevatedButton(
              onPressed: () => _onPush(name: 'explicit'),
              child: const Text('Explicit Animations'),
            ),
            ElevatedButton(
              onPressed: () => _onPush(name: 'swiping cards'),
              child: const Text('Swiping Cards'),
            ),
            ElevatedButton(
              onPressed: () => _onPush(name: 'music player'),
              child: const Text('Music Player'),
            ),
          ],
        ),
      ),
    );
  }
}
