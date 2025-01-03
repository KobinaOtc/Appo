import 'package:appoapp/util/responsive.dart';
import 'package:appoapp/widget/bar_graph_card.dart';
import 'package:appoapp/widget/header_widget.dart';
import 'package:appoapp/widget/line_chart_card.dart';
import 'package:appoapp/widget/summary_widget.dart';
import 'package:flutter/cupertino.dart';

import 'activity_details_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            const HeaderWidget(),
            const SizedBox(
              height: 18,
            ),
            const ActivityDetailsCard(),
            const SizedBox(
              height: 18,
            ),
            const LineChartCard(),
            const SizedBox(
              height: 18,
            ),
            const BarGraphCard(),
            const SizedBox(
              height: 18,
            ),
            if (Responsive.isTablet(context)) const SummaryWidget()
          ],
        ),
      ),
    );
  }
}
