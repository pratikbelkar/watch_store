import 'package:flutter/material.dart';
import 'package:watch_store/constants/app_theme.dart';
import 'package:watch_store/constants/extension/extension_sizebox.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/provider/watch_provider.dart';
import 'package:watch_store/view/bottom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/4.png',
              fit: BoxFit.cover,
              height: 400,
              width: 200,
            ),
            20.hSpace,
            const CircularProgressIndicator(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
