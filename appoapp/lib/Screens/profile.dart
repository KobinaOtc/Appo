import 'package:appoapp/widget/profile_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/responsive.dart';
import '../widget/sideMenuWidget.dart';
import '../widget/summary_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? Container(
              width: MediaQuery.of(context).size.width * 0.8,
              color: cardBackgroundColor,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            const Expanded(
              flex: 7,
              child: ProfileWidget(),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: SummaryWidget(),
              )
          ],
        ),
      ),
    );
  }
}
