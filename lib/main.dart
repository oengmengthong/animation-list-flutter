import 'package:flutter/material.dart';
import 'package:animation_list/animation_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeAnimationScreen(),
    );
  }
}

class HomeAnimationScreen extends StatefulWidget {
  const HomeAnimationScreen({super.key});

  @override
  State<HomeAnimationScreen> createState() => _HomeAnimationScreenState();
}

class _HomeAnimationScreenState extends State<HomeAnimationScreen> {
  // This sample data for render list
  final List<Map<String, dynamic>> data = [
    {
      'title': '1111',
      'backgroundColor': Colors.grey,
    },
    {
      'title': '2222',
      'backgroundColor': Colors.red,
    },
    {
      'title': '3333',
      'backgroundColor': Colors.yellow,
    },
    {
      'title': '4444',
      'backgroundColor': Colors.blue,
    },
    {
      'title': '5555',
      'backgroundColor': Colors.green,
    },
    {
      'title': '6666',
      'backgroundColor': Colors.orange,
    },
    {
      'title': '7777',
      'backgroundColor': Colors.brown,
    },
    {
      'title': '8888',
      'backgroundColor': Colors.purple,
    },
    {
      'title': '3333',
      'backgroundColor': Colors.yellow,
    },
    {
      'title': '4444',
      'backgroundColor': Colors.blue,
    },
    {
      'title': '5555',
      'backgroundColor': Colors.green,
    },
    {
      'title': '6666',
      'backgroundColor': Colors.orange,
    },
    {
      'title': '7777',
      'backgroundColor': Colors.brown,
    },
    {
      'title': '8888',
      'backgroundColor': Colors.purple,
    },
    {
      'title': '3333',
      'backgroundColor': Colors.yellow,
    },
    {
      'title': '4444',
      'backgroundColor': Colors.blue,
    },
    {
      'title': '5555',
      'backgroundColor': Colors.green,
    },
    {
      'title': '6666',
      'backgroundColor': Colors.orange,
    },
    {
      'title': '7777',
      'backgroundColor': Colors.brown,
    },
    {
      'title': '8888',
      'backgroundColor': Colors.purple,
    },
  ];

// This is widget UI that we will render in list
  Widget _buildTile(String title, Color backgroundColor) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: backgroundColor,
      ),
      child: ListTile(
        title: Text(title),
      ),
    );
  }

// This is main widget that screen will render first
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // This is animation widget that we use from library
        child: AnimationList(
          duration: 1000,
          reBounceDepth: 10.0,
          children: data.map((item) {
            // Here we call widget UI into animation list
            return _buildTile(item['title'], item['backgroundColor']);
          }).toList(),
        ),
      ),
    );
  }
}
