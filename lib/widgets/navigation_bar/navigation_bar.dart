import 'package:flutter/material.dart';
import 'package:nenad_web/widgets/navigation_bar/navigation_bar_moblile.dart';
import 'package:nenad_web/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CostumeNavigationBar extends StatelessWidget {
  const CostumeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
