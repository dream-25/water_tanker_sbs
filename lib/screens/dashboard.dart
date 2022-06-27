import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:phedtanker/screens/homescreen.dart';
import 'package:phedtanker/screens/profilescreen.dart';
import 'package:phedtanker/screens/report1.dart';
import 'package:phedtanker/screens/reports.dart';
import 'package:phedtanker/utils/colors.dart';

class DashBoard extends StatefulWidget {
  @override
  State createState() {
    return _DashBoard();
  }
}

class _DashBoard extends State {
  Widget? _child;

  @override
  void initState() {
    _child = HomeScreen();
    super.initState();
  }

  @override
  Widget build(context) {
    // Build a simple container that switches content based of off the selected navigation item
    return Scaffold(
      extendBody: true,
      body: _child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.list, extras: {"label": "home"}),
          FluidNavBarIcon(icon: Icons.analytics, extras: {"label": "account"}),
          FluidNavBarIcon(
              icon: Icons.person_pin_rounded, extras: {"label": "settings"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(
            barBackgroundColor: blue,
            iconBackgroundColor: white,
            iconSelectedForegroundColor: blue,
            iconUnselectedForegroundColor: blue),
        scaleFactor: 1.5,
        defaultIndex: 0,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomeScreen();
          break;
        case 1:
          _child = SortablePage();
          break;
        case 2:
          _child = ProfileScreen();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
