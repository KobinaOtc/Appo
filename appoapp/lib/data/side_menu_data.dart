import 'package:appoapp/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon: Icons.phonelink_ring, title: 'Connect'),
    MenuModel(icon: Icons.calendar_month_outlined, title: 'Appointment'),
    MenuModel(
        icon: Icons.notifications_active_outlined, title: 'Notifications'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.logout, title: 'Sign Out'),
  ];
}
