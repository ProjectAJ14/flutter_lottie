import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Stack(
          children: [
            ListView(
              children: List.generate(
                100,
                (index) => ListTile(
                  title: Text('Item $index'),
                ),
              ).toList(),
            ),
            PageView(
              children: const [
                LottieWidget(
                  title: 'Tap Here',
                  asset: 'assets/tap_here.json',
                ),
                LottieWidget(
                  title: 'Swipe right',
                  asset: 'assets/swipe-right.json',
                ),
                LottieWidget(
                  title: 'Swipe up',
                  asset: 'assets/swipe-up.json',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LottieWidget extends StatelessWidget {
  const LottieWidget({
    Key? key,
    required this.asset,
    required this.title,
  }) : super(key: key);

  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Lottie.asset(
          asset,
          fit: BoxFit.contain,
          width: 200,
          height: 200,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
