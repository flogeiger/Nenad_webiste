import 'package:flutter/material.dart';
import 'package:nenad_web/widgets/call_to_action/call_to_action.dart';
import 'package:nenad_web/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        const SizedBox(
          height: 100,
        ),
        const CallToAction('Join Course'),
      ],
    );
  }
}
