import 'package:flutter/material.dart';
import 'package:nenad_web/views/home/home_content_desktop.dart';
import 'package:nenad_web/views/home/home_content_mobile.dart';
import 'package:nenad_web/widgets/center_container/centered_view.dart';
import 'package:nenad_web/widgets/nav_drawer/navigation_drawer.dart';
import 'package:nenad_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? CostumeNavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              CostumeNavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
