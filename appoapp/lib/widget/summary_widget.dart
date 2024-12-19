import 'package:appoapp/widget/pie_chart_widget.dart';
import 'package:appoapp/widget/scheduled_widget.dart';
import 'package:appoapp/widget/summary_details.dart';
import 'package:flutter/cupertino.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Chart(),
          Text(
            'Summary',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          SummaryDetails(),
          SizedBox(height: 40),
          Schedule()
        ],
      ),
    );
  }
}
