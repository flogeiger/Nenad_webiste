import 'package:flutter/material.dart';
import 'package:nenad_web/views/home/home_content_desktop.dart';
import 'package:nenad_web/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
