// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/view_model/base_view_model.dart';
import 'package:lucious_beauty_app/ui/screens/booking/booking_screen.dart';
import 'package:lucious_beauty_app/ui/screens/home/home_screen.dart';
import 'package:lucious_beauty_app/ui/screens/profile/profile_screen.dart';

class RootViewModel extends BaseViewModel {
  RootViewModel(val) {
    UpdatedScreen(val);
    notifyListeners();
  }
  List<Widget> allScreen = [
    const HomeScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];
  int selectedScreen = 0;
  int selectedIndex = 0;

  UpdatedScreen(int Index) {
    selectedScreen = Index;
    selectedIndex = Index;

    notifyListeners();
  }
}
