import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:couldai_user_app/app/utils/responsive.dart';
import 'package:couldai_user_app/features/home/widgets/category_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: Responsive.isDesktop(context) ? 48 : 32,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.bodyLarge?.color);

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
                SizedBox(
                  height: Responsive.isDesktop(context) ? 120 : 80,
                  child: DefaultTextStyle(
                    style: textStyle,
                    textAlign: TextAlign.center,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('Build Smarter. Launch Faster.'),
                        TyperAnimatedText('With AshiVion Templates.'),
                      ],
                      repeatForever: true,
                    ),
                  ),
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
        // Category Section
        const CategorySection(),
        // Other sections will be added here
      ],
    );
  }
}
