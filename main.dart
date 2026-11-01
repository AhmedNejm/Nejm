import 'package:flutter/material.dart';

void main() {
  runApp(const NejmApp());
}

class NejmApp extends StatelessWidget {
  const NejmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نجم',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0F766E),
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'نجم ✦',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              const Icon(Icons.auto_awesome, size: 72),
              const SizedBox(height: 20),
              const Text(
                'نجم',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'خطوة صغيرة... إلى حياة أجمل ✨',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: const [
                      Icon(Icons.check_circle_outline, size: 42),
                      SizedBox(height: 12),
                      Text(
                        'مرحبًا بك في نجم',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'هذه أول نسخة أساسية من التطبيق. سنبني عليها خطوة بخطوة.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
