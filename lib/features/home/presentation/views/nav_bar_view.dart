import 'package:flutter/material.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/features/home/data/models/bottom_nav_item_model.dart';
import 'package:sokan_msr/features/home/presentation/views/home_view.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/glassmorphism_bottom_nav.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomeView(),
      Container(color: Colors.red),
      Container(color: Colors.green),
      Container(color: Colors.blue),
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(index: _currentIndex, children: pages),
            GlassmorphismBottomNav(
              currentIndex: _currentIndex,
              onItemTapped: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavItemModel(id: 0, label: 'Home', icon: Assets.home),
                BottomNavItemModel(
                  id: 1,
                  label: 'Invoices',
                  icon: Assets.invoices,
                ),
                BottomNavItemModel(
                  id: 2,
                  label: 'Services',
                  icon: Assets.services,
                ),
                BottomNavItemModel(
                  id: 3,
                  label: 'Profile',
                  icon: Assets.profile,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
