import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/utils/constants.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.kDefaultPadding * 2),
      child: Column(
        children: [
          Text(
            'Browse by Category',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppConstants.kDefaultPadding),
          const Wrap(
            spacing: AppConstants.kDefaultPadding * 2,
            runSpacing: AppConstants.kDefaultPadding * 2,
            alignment: WrapAlignment.center,
            children: [
              CategoryIcon(icon: Icons.portrait, label: 'Portfolio'),
              CategoryIcon(icon: Icons.business, label: 'Business'),
              CategoryIcon(icon: Icons.article, label: 'Blog'),
              CategoryIcon(icon: Icons.shopping_cart, label: 'eCommerce'),
              CategoryIcon(icon: Icons.web, label: 'Landing Pages'),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: Icon(
            icon,
            size: 40,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
