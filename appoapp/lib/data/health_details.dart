import 'package:appoapp/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
      icon: 'icons/heart-rate.png',
      value: '140bm',
      title: 'Heart Rate',
    ),
    HealthModel(
      icon: 'icons/Status.png',
      value: '500',
      title: 'Steps',
    ),
    HealthModel(
      icon: 'icons/Distance.png',
      value: '2.2km',
      title: 'Distance',
    ),
    HealthModel(
      icon: 'icons/restful.png',
      value: '8/10',
      title: 'Sleep',
    ),
  ];
}
