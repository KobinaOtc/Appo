import 'package:appoapp/constants.dart';
import 'package:appoapp/util/responsive.dart';
import 'package:appoapp/widget/sideMenuWidget.dart';
import 'package:appoapp/widget/summary_widget.dart';
import 'package:flutter/material.dart';

import '../widget/dashboard_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
              child: DashboardWidget(),
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
