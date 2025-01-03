import 'package:flutter/material.dart';
import 'package:sampling/auth/sign_in.dart';
import 'package:sampling/auth/sign_up.dart';
import 'package:sampling/colors.dart';

class SlidingTabs extends StatefulWidget {
  final ScrollController scrollController;
  const SlidingTabs({super.key, required this.scrollController});

  @override
  State<SlidingTabs> createState() => _SlidingTabsState();
}

class _SlidingTabsState extends State<SlidingTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grey,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: black,
            labelColor: black,
            unselectedLabelColor: grey,
            tabs: const [
              Tab(text: "Sign In"),
              Tab(text: "Sign Up"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SignInContent(),
                SignUpContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}