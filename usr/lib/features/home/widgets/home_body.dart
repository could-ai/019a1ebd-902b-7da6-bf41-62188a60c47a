import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/utils/responsive.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Hero Section
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Build Smarter. Launch Faster.',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'With AshiVion Templates.',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Explore Templates'),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Start for Free'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Other sections will be added here
      ],
    );
  }
}
