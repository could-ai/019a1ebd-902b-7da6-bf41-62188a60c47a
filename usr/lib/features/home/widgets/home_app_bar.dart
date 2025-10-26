import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/utils/responsive.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 100.0,
      floating: false,
      pinned: true,
      snap: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      title: Text(
        'AshiVion Templates',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      actions: Responsive.isDesktop(context)
          ? [
              _navBarItem('Home'),
              _navBarItem('Templates'),
              _navBarItem('About'),
              _navBarItem('Contact'),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
              const SizedBox(width: 20),
            ]
          : [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Handle drawer
                },
              ),
            ],
    );
  }

  Widget _navBarItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
