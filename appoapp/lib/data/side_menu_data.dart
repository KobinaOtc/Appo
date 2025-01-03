import 'package:appoapp/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard', url: '/home'),
    MenuModel(icon: Icons.person, title: 'Profile', url: '/profile'),
    MenuModel(icon: Icons.phonelink_ring, title: 'Connect', url: '/home'),
    MenuModel(
        icon: Icons.calendar_month_outlined,
        title: 'Appointment',
        url: '/home'),
    MenuModel(
        icon: Icons.notifications_active_outlined,
        title: 'Notifications',
        url: '/home'),
    MenuModel(icon: Icons.settings, title: 'Settings', url: '/home'),
    MenuModel(icon: Icons.logout, title: 'Sign Out', url: '/home'),
  ];
}
