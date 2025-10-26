import 'package:flutter/material.dart';
import 'package:couldai_user_app/features/home/widgets/home_app_bar.dart';
import 'package:couldai_user_app/features/home/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(
            child: HomeBody(),
          ),
        ],
      ),
    );
  }
}
