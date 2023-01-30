import 'package:flutter/material.dart';
import 'package:nenad_web/locator.dart';
import 'package:nenad_web/routing/route_names.dart';
import 'package:nenad_web/routing/router.dart';
import 'package:nenad_web/services/navigation_service.dart';
import 'package:nenad_web/widgets/center_container/centered_view.dart';
import 'package:nenad_web/widgets/nav_drawer/navigation_drawer.dart';
import 'package:nenad_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
